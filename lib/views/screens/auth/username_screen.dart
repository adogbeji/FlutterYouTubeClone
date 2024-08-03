import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:youtube_clone/views/widgets/flat_button.dart';

class UsernameScreen extends StatefulWidget {
  const UsernameScreen({super.key});

  @override
  State<UsernameScreen> createState() => _UsernameScreenState();
}

class _UsernameScreenState extends State<UsernameScreen> {
  final formKey = GlobalKey<FormState>();

  final TextEditingController usernameController = TextEditingController();


  // CHECKS IF USERNAME EXISTS IN DATABASE
  void validateUsername() async {
    final usersMap = await FirebaseFirestore.instance.collection('users').get();  // Gets all users in database

    final users = usersMap.docs.map((user) => user).toList();  // List of users

    String targetedUsername;
    
    for (var user in users) {  // Checking eery single userame in database
      if (usernameController.text == user.data()['username']) {}
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
                  key: formKey,
                  controller: usernameController,
                  decoration: const InputDecoration(
                    labelText: 'Username',
                    hintText: 'Enter Username...',
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
                onPressed: () {},
                colour: Colors.green,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
