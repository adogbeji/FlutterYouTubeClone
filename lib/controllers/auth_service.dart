import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_sign_in/google_sign_in.dart';

final authServiceProvider = Provider(
  (ref) => AuthService(
    auth: FirebaseAuth.instance,
    googleSignIn: GoogleSignIn(),
  ),
);

class AuthService {
  FirebaseAuth auth;
  GoogleSignIn googleSignIn;

  AuthService({required this.auth, required this.googleSignIn});

  signInWithGoogle() async {
    final user = await googleSignIn
        .signIn(); // Opens modal allowing users to sign in with google
    final googleAuth =
        await user!.authentication; // Causes user to be signed in
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    ); // Stores user credentials

    await auth.signInWithCredential(
        credential); // Connects firebase_auth with google_sign_in
  }
}
