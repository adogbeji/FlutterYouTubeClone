import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:youtube_clone/models/user_model.dart';

class UserDataService {
  UserDataService({required this.auth, required this.firestore});

  FirebaseAuth auth;
  FirebaseFirestore firestore;

  
  // Adds User Data to Firestore Database
  addUserDataToFirestore({
    required String displayName,
    required String username,
    required String email,
    required String description,
    required String profilePic,
  }) async {
    UserModel user = UserModel(
      displayName: displayName,
      username: username,
      email: email,
      profilePic: profilePic,
      subscriptions: [],
      videos: 0,
      userId: auth.currentUser!.uid,
      description: description,
      type: "user",
    );
  }
}