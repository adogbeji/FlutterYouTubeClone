import 'package:flutter/material.dart';

class MyChannelSettings extends StatelessWidget {
  const MyChannelSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              children: [
            SizedBox(
              width: double.infinity,
              height: 170,
              child: Image.asset('assets/images/flutter background.png', fit: BoxFit.cover,),
            ),

            const Positioned(
              left: 180,
              top: 60,
              child: CircleAvatar(
                radius: 30,
                backgroundColor: Colors.grey,
              ),
            ),
          ],
            ),
          ],
        ),
      ),
    );
  }
}
