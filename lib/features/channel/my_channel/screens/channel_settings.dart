import 'package:flutter/material.dart';

import 'package:youtube_clone/features/channel/users_channel/widgets/setting_field_item.dart';

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
                  child: Image.asset(
                    'assets/images/flutter background.png',
                    fit: BoxFit.cover,
                  ),
                ),

                const Positioned(
                  left: 180,
                  top: 60,
                  child: CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.grey,
                  ),
                ),

                Positioned(
                  right: 16,
                  top: 10,
                  child: Image.asset(
                    'assets/icons/camera.png',
                    height: 30,
                    color: Colors.white,
                  ),
                ),
              ],
            ),

            SettingsItem(
              identifier: 'Name',
              onPressed: () {},
              value: 'Ben',
            ),
          ],
        ),
      ),
    );
  }
}
