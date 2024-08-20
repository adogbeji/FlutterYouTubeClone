import 'package:flutter/material.dart';

class UsernameScreen extends StatelessWidget {
  const UsernameScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: 26,
            horizontal: 14,
          ),
          child: Text('Enter Username', style: TextStyle(
            color: Colors.blueGrey,
          ),),
        ),
      ),
    );
  }
}