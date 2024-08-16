import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthService {
  FirebaseAuth auth;
  GoogleSignIn googleSignIn;
  
  AuthService({required this.auth, required this.googleSignIn});

  signInWithGoogle() async {
    final user = await googleSignIn.signIn();  // Opens modal allowing users to sign in with google 
    final googleAuth = await user!.authentication;  // Causes user to be signed in
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );  // Stores user credentials

    await auth.signInWithCredential(credential);  // Connects firebase_auth with google_sign_in
  }
}