import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final editSettingsProvider = Provider(
  (ref) => EditFieldSettings(
    firestore: FirebaseFirestore.instance,
    auth: FirebaseAuth.instance,
  ),
);

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
