import 'package:flutter/material.dart';
import 'package:youtube_clone/cores/widgets/flat_button.dart';

class UserChannelScreen extends StatelessWidget {
  const UserChannelScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
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
                  Padding(
                    padding: const EdgeInsets.only(left: 12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
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
                            color: Colors.blueGrey,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        RichText(
                          text: const TextSpan(
                            style: TextStyle(
                              fontSize: 13,
                              color: Colors.blueGrey,
                              fontWeight: FontWeight.w500,
                            ),
                            children: [
                              TextSpan(text: 'No Subscriptions '),
                              TextSpan(text: 'No Videos'),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            FlatButton(
              text: 'SUBSCRIBE', 
              onPressed: () {}, 
              colour: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}
