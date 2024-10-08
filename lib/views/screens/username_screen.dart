import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youtube_clone/controllers/user_data_service.dart';

import 'package:youtube_clone/cores/widgets/flat_button.dart';

class UsernameScreen extends ConsumerStatefulWidget {
  const UsernameScreen({super.key, required this.displayName, required this.profilePic, required this.email});

  final String displayName;
  final String profilePic;
  final String email;

  @override
  ConsumerState<UsernameScreen> createState() => _UsernameScreenState();
}

class _UsernameScreenState extends ConsumerState<UsernameScreen> {
  final formKey = GlobalKey<FormState>(); // Form Key

  final TextEditingController usernameController = TextEditingController();
  bool isValidate = true;

  // Checks if username already exists in database
  void validateUsername() async {
    final usersMap = await FirebaseFirestore.instance.collection('users').get(); // Gets all data in users collection
    final users = usersMap.docs.map((user) => user).toList(); // Gives us a list of users
    String? targetedUsername; // Stores username which exists in database

    for (var user in users) {
      if (usernameController.text == user.data()['username']) {
        targetedUsername = user.data()['username'];
        isValidate = false; // Validation failed, user can't continue
        setState(() {});
      }
      if (usernameController.text != targetedUsername) {
        isValidate = true; // Validation succeeded
        setState(() {});
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(
                vertical: 26,
                horizontal: 14,
              ),
              child: Text(
                'Enter Username',
                style: TextStyle(
                  color: Colors.blueGrey,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 15,
                right: 15,
              ),
              child: Form(
                child: TextFormField(
                  key: formKey,
                  onChanged: (username) {
                    validateUsername();
                  },
                  validator: (username) {
                    return isValidate ? null: 'Username already taken!';
                  },
                  autovalidateMode: AutovalidateMode.always,
                  controller: usernameController,
                  decoration: const InputDecoration(
                    labelText: 'Username',
                    hintText: 'Enter username...',
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.blue,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.blue,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.green,
                      ),
                    ),
                    suffixIcon: Icon(Icons.verified_user_rounded),
                    suffixIconColor: Colors.green,
                  ),
                ),
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(
                left: 8,
                right: 8,
                bottom: 30,
              ),
              child: FlatButton(
                text: 'CONTINUE',
                onPressed: () async {
                  isValidate ? await ref.read(userDataServiceProvider).addUserDataToFirestore(
                    displayName: widget.displayName, 
                    username: usernameController.text, 
                    email: widget.email, 
                    description: '', 
                    profilePic: widget.profilePic
                  ): null;
                },
                colour: Colors.green,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
