// import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:youtube_clone/cores/screens/loader.dart';

import 'package:youtube_clone/views/home_screen.dart';
import 'package:youtube_clone/views/screens/auth/login_screen.dart';
import 'package:youtube_clone/views/screens/username_screen.dart';
import 'package:youtube_clone/features/channel/my_channel/screens/my_channel_screen.dart';
import 'package:youtube_clone/features/channel/users_channel/screens/user_channel_screen.dart';

import 'package:youtube_clone/features/channel/my_channel/screens/channel_settings.dart';
import 'firebase_options.dart';


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
      // home: const UsernameScreen(),
      // home: const HomeScreen(),
      // home: const MyChannelScreen(),
      // home: const MyChannelSettings(),
      home: const UserChannelScreen(),

      // home: StreamBuilder(
      //   stream: FirebaseAuth.instance.authStateChanges(),  // Checks what's happening in Firebase Auth
      //   builder: (context, snapshot) {
      //     if (!snapshot.hasData) {
      //       return const LoginScreen();
      //     } 
      //     return const HomeScreen();
      //   },
      // ),

      // home: StreamBuilder(
      //   stream: FirebaseAuth.instance.authStateChanges(),
      //   builder: (context, snapshot) {
      //     if (!snapshot.hasData) {
      //       return const LoginScreen();
      //     } else if (snapshot.connectionState == ConnectionState.waiting) {
      //       return const Loader();
      //     }
      //     return StreamBuilder(
      //       stream: FirebaseFirestore.instance
      //           .collection("users")
      //           .doc(FirebaseAuth.instance.currentUser!.uid)
      //           .snapshots(),
      //       builder: (context, snapshot) {
      //         final user = FirebaseAuth.instance.currentUser;
      //         if (!snapshot.hasData || !snapshot.data!.exists) {
      //           return UsernameScreen(
      //             displayName: user!.displayName!,
      //             profilePic: user.photoURL!,
      //             email: user.email!,
      //           );
      //         } else if (snapshot.connectionState == ConnectionState.waiting) {
      //           return const Loader();
      //         }
      //         return const HomeScreen();
      //       },
      //     );
      //   },
      // ),

    );
  }
}