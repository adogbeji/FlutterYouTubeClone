import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:youtube_clone/controllers/auth_service.dart';

class LoginScreen extends ConsumerWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      // backgroundColor: Colors.grey,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 20,
                  bottom: 25,
                ),
                child: Image.asset(
                  'assets/images/youtube-signin.jpg',
                  height: 150,
                ),
              ),
              const Text(
                'Welcome To YouTube',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.blueGrey,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.only(
                  bottom: 55,
                ),
                child: GestureDetector(
                  onTap: () {
                    ref.read(authServiceProvider);
                  },
                  child: Image.asset(
                    'assets/images/signinwithgoogle.png',
                    height: 60,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
