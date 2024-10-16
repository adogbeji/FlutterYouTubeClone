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
            Padding(
              padding: const EdgeInsets.only(left: 12, right: 12, top: 20),
              child: Row(
                children: [
                  const CircleAvatar(
                    radius: 38,
                    backgroundColor: Colors.grey,
                  ),
                  Column(
                    children: [
                      const Text(
                        'Display Name',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      
                      const Text(
                        'Username',
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      RichText(
                        text: const TextSpan(
                          style: TextStyle(color: Colors.blueGrey),
                          children: [
                            TextSpan(text: 'No Subscriptions'),
                            TextSpan(text: 'No Videos'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
