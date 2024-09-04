import 'package:flutter/material.dart';

class MyChannelScreen extends StatelessWidget {
  const MyChannelScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Column(
            children: [
              const Center(
                child: CircleAvatar(
                  radius: 38,
                  backgroundColor: Colors.grey,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(
                  top: 10,
                  bottom: 4,
                ),
                child: Text(
                  'Display Name',
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              RichText(text: const TextSpan(
                style: TextStyle(
                  color: Colors.blueGrey,
                ),
                children: [
                  TextSpan(text: '@display-name '),
                  TextSpan(text: 'No subscriptions '),
                  TextSpan(text: 'No videos'),
                ],
              ),),

              const Text('More about this channel'),
            ],
          ),
        ),
      ),
    );
  }
}
