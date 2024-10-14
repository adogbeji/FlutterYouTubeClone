import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youtube_clone/cores/screens/error_page.dart';
import 'package:youtube_clone/cores/screens/loader.dart';
import 'package:youtube_clone/features/channel/my_channel/repository/edit_field.dart';
import 'package:youtube_clone/features/channel/users_channel/widgets/edit_setting_dialog.dart';

import 'package:youtube_clone/features/channel/users_channel/widgets/setting_field_item.dart';
import 'package:youtube_clone/views/screens/auth/provider/user_proivider.dart';

class MyChannelSettings extends ConsumerStatefulWidget {
  const MyChannelSettings({super.key});

  @override
  ConsumerState<MyChannelSettings> createState() => _MyChannelSettingsState();
}

class _MyChannelSettingsState extends ConsumerState<MyChannelSettings> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return ref.watch(currentUserProvider).when(
          data: (currentUser) => Scaffold(
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
                      Positioned(
                        left: 180,
                        top: 60,
                        child: CircleAvatar(
                          radius: 30,
                          backgroundColor: Colors.grey,
                          backgroundImage: CachedNetworkImageProvider(
                              currentUser.profilePic),
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
                  const SizedBox(
                    height: 14,
                  ),
                  SettingsItem(
                    identifier: 'Name',
                    onPressed: () {
                      // ref.watch(editSettingsProvider).editDisplayName(displayName)
                      showDialog(
                        context: context,
                        builder: (context) => SettingsDialog(
                          identifier: 'DisplayName',
                          onSave: (name) {
                            ref
                                .watch(editSettingsProvider)
                                .editDisplayName(name);
                          },
                        ),
                      );
                    },
                    value: 'Ben',
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  SettingsItem(
                    identifier: 'Handle',
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context) => SettingsDialog(
                          identifier: 'Username',
                          onSave: (username) {
                            ref
                                .watch(editSettingsProvider)
                                .editUserName(username);
                          },
                        ),
                      );
                    },
                    value: '@Ben01',
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  SettingsItem(
                    identifier: 'Description',
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context) => SettingsDialog(
                          identifier: 'Description',
                          onSave: (description) {
                            ref
                                .watch(editSettingsProvider)
                                .editUserName(description);
                          },
                        ),
                      );
                    },
                    value: '',
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 12, right: 8),
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
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                    child: Text(
                      'Changes made to your username and profile picture are only visible to YouTube and not other Google services',
                      style: TextStyle(
                        color: Colors.blueGrey,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ),
          error: (error, stackTrace) => const ErrorScreen(),
          loading: () => const Loader(),
        );
  }
}
