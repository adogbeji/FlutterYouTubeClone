import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class UserDataService {
  UserDataService({required this.auth, required this.firestore});

  FirebaseAuth auth;
  FirebaseFirestore firestore;


  addUserDataToFirestore() async {}
}