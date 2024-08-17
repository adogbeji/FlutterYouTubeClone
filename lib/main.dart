import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youtube_clone/views/home_screen.dart';
import 'firebase_options.dart';

import 'package:youtube_clone/views/screens/auth/login_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized(); // Ensures all Flutter widgets have been successfully initialised
  
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const ProviderScope(child: MyApp(),),);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home: const LoginScreen(),
      home: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),  // Checks what's happening in Firebase Auth
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return const LoginScreen();
          } 
          return const HomeScreen();
        },
      ),
    );
  }
}