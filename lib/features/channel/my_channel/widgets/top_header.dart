import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:youtube_clone/models/user_model.dart';

class TopHeader extends StatelessWidget {
  const TopHeader({super.key, required this.user});

  final UserModel user;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: CircleAvatar(
            radius: 38,
            backgroundColor: Colors.grey,
            backgroundImage: CachedNetworkImageProvider(user.profilePic),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 10,
            bottom: 4,
          ),
          child: Text(
            // 'Display Name',
            user.displayName,
            style: const TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 9),
          child: RichText(
            text: TextSpan(
              style: const TextStyle(
                color: Colors.blueGrey,
              ),
              children: [
                TextSpan(text: '${user.username} '),
                TextSpan(text: '${user.subscriptions.length} subscriptions '),
                TextSpan(text: '${user.videos} videos'),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
