import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class EditFieldSettings {
  EditFieldSettings({required this.firestore, required this.auth});

  final FirebaseFirestore firestore;
  final FirebaseAuth auth;

  editDisplayName(displayName) async {
    await firestore.collection('users').doc(auth.currentUser!.uid).update({
      'displayName': displayName,
    });
  }

  editUserName(username) async {
    await firestore.collection('users').doc(auth.currentUser!.uid).update({
      'username': username,
    });
  }

  editDescription(description) async {
    await firestore.collection('users').doc(auth.currentUser!.uid).update({
      'description': description,
    });
  }
}