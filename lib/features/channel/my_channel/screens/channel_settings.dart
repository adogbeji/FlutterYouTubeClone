import 'package:flutter/material.dart';

class MyChannelSettings extends StatelessWidget {
  const MyChannelSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Column(
            children: [
              Image.asset('assets/images/flutter background.png')
            ],
          ),
        ),
      )
    );
  }
}