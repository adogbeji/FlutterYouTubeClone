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

            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Username',
                hintText: 'Enter Username...',
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.blue,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}