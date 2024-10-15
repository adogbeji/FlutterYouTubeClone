import 'package:flutter/material.dart';

class UserChannelScreen extends StatelessWidget {
  const UserChannelScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Image.asset('assets/images/flutter background.png'),
            const Row(
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.grey,
                ),

                Column(
                  children: [
                    Text('Display Name'),
                    Text('Username'),
                    // RichText(text: text)
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}