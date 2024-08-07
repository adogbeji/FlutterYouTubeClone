import 'package:flutter/material.dart';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youtube_clone/controllers/user_data_service.dart';
import 'package:youtube_clone/views/widgets/flat_button.dart';

class UsernameScreen extends ConsumerStatefulWidget {
  final String displayName;
  final String profilePic;
  final String email;
  
  const UsernameScreen({
    super.key,
    required this.displayName,
    required this.profilePic,
    required this.email,
  });

  @override
  ConsumerState<UsernameScreen> createState() => _UsernameScreenState();
}

class _UsernameScreenState extends ConsumerState<UsernameScreen> {
  final formKey = GlobalKey<FormState>();

  final TextEditingController usernameController = TextEditingController();
  bool isValidate = true;  // Allows us to keep track of validation


  // CHECKS IF USERNAME EXISTS IN DATABASE
  void validateUsername() async {
    final usersMap = await FirebaseFirestore.instance.collection('users').get();  // Gets all users in database
    final users = usersMap.docs.map((user) => user).toList();  // List of users
    String? targetedUsername;
    
    for (var user in users) {  // Checking eery single userame in database
      if (usernameController.text == user.data()['username']) {
        targetedUsername = user.data()['username'];
        isValidate = false;
        setState(() {});
      }

      if (usernameController.text != targetedUsername) {
        isValidate = true;
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
                'Enter the username',
                style: TextStyle(
                  color: Colors.blueGrey,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Form(
                child: TextFormField(
                  onChanged: (username) {
                    validateUsername();
                  },
                  autovalidateMode: AutovalidateMode.always,
                  validator: (username) {
                    return isValidate ? null : 'username already taken';
                  },
                  key: formKey,
                  controller: usernameController,
                  decoration: InputDecoration(
                    labelText: 'Username',
                    hintText: 'Enter Username...',
                    border: const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.blue,
                      ),
                    ),
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.blue,
                      ),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.green,
                      ),
                    ),
                    suffixIcon: isValidate ? Icon(Icons.verified_user_rounded): Icon(Icons.cancel),
                    suffixIconColor: isValidate ? Colors.green: Colors.red,
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
                  // Add user data to database

                  isValidate ? await ref.read(userDataServiceProvider)
                      .addUserDataToFirestore(
                        displayName: widget.displayName, 
                        username: usernameController.text, 
                        email: widget.email, 
                        description: '', 
                        profilePic: widget.profilePic,
                      ): null;
                },
                colour: isValidate ? Colors.green : Colors.green.shade100,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
