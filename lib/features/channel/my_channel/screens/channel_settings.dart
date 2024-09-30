import 'package:flutter/material.dart';

import 'package:youtube_clone/features/channel/users_channel/widgets/setting_field_item.dart';

class MyChannelSettings extends StatefulWidget {
  const MyChannelSettings({super.key});

  @override
  State<MyChannelSettings> createState() => _MyChannelSettingsState();
}

class _MyChannelSettingsState extends State<MyChannelSettings> {
  bool isSwitched = false;

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

            const SizedBox(height: 14,),

            SettingsItem(
              identifier: 'Name',
              onPressed: () {},
              value: 'Ben',
            ),

            const SizedBox(height: 14,),

            SettingsItem(
              identifier: 'Handle',
              onPressed: () {},
              value: '@Ben01',
            ),

            const SizedBox(height: 14,),

            SettingsItem(
              identifier: 'Description',
              onPressed: () {},
              value: '',
            ),

            Padding(
              padding: const EdgeInsets.only(left: 8, right: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Keep all my subscribers private'),
                  Switch(
                    value: isSwitched,
                    onChanged: (value) {
                      isSwitched = value;
                      setState(() {});
                    },
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
