import 'package:flutter/material.dart';

class UsernameScreen extends StatelessWidget {
  const UsernameScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(
                vertical: 26,
                horizontal: 14,
              ),
              child: Text('Enter the username', style: TextStyle(
                color: Colors.blueGrey,
              ),),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: TextFormField(
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

            Spacer(),
          ],
        ),
      ),
    );
  }
}