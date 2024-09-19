import 'package:flutter/material.dart';

import 'package:youtube_clone/cores/colors.dart';

import 'package:youtube_clone/cores/widgets/image_button.dart';
import 'package:youtube_clone/features/channel/my_channel/widgets/buttons.dart';
import 'package:youtube_clone/features/channel/my_channel/widgets/page_tab_bar.dart';
import 'package:youtube_clone/features/channel/my_channel/widgets/tab_bar_view.dart';
import 'package:youtube_clone/features/channel/my_channel/widgets/top_header.dart';

class MyChannelScreen extends StatelessWidget {
  const MyChannelScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // return const DefaultTabController(
    //   length: 7,
    //   child: Scaffold(
    //     body: SafeArea(
    //       child: Padding(
    //         padding: EdgeInsets.only(top: 20),
    //         child: Column(
    //           children: [
    //             TopHeader(),
    //             // const Center(
    //             //   child: CircleAvatar(
    //             //     radius: 38,
    //             //     backgroundColor: Colors.grey,
    //             //   ),
    //             // ),
    //             // const Padding(
    //             //   padding: EdgeInsets.only(
    //             //     top: 10,
    //             //     bottom: 4,
    //             //   ),
    //             //   child: Text(
    //             //     'Display Name',
    //             //     style: TextStyle(
    //             //       fontSize: 26,
    //             //       fontWeight: FontWeight.bold,
    //             //     ),
    //             //   ),
    //             // ),
    //             // Padding(
    //             //   padding: const EdgeInsets.only(bottom: 9),
    //             //   child: RichText(
    //             //     text: const TextSpan(
    //             //       style: TextStyle(
    //             //         color: Colors.blueGrey,
    //             //       ),
    //             //       children: [
    //             //         TextSpan(text: '@display-name '),
    //             //         TextSpan(text: 'No subscriptions '),
    //             //         TextSpan(text: 'No videos'),
    //             //       ],
    //             //     ),
    //             //   ),
    //             // ),
      
    //             // const Text('More about this channel'),
      
    //             // Padding(
    //             //   padding: const EdgeInsets.only(top: 16),
    //             //   child: Row(
    //             //     children: [
    //             //       Expanded(
    //             //         flex: 3,
    //             //         child: Container(
    //             //           height: 41,
    //             //           decoration: const BoxDecoration(
    //             //             color: softBlueGreyBackGround,
    //             //             borderRadius: const BorderRadius.all(Radius.circular(10),),
    //             //           ),
    //             //           child: TextButton(
    //             //             onPressed: () {},
    //             //             child: const Text('Manage Videos', style: TextStyle(
    //             //               color: Colors.black,
    //             //             ),),
    //             //           ),
    //             //         ),
    //             //       ),
                  
    //             //       Expanded(
    //             //         child: ImageButton(
    //             //           onPressed: () {}, 
    //             //           image: 'pen.png', 
    //             //           haveColor: true,
    //             //         ),
    //             //       ),
                  
    //             //       Expanded(
    //             //         child: ImageButton(
    //             //           onPressed: () {}, 
    //             //           image: 'time-watched.png', 
    //             //           haveColor: true,
    //             //         ),
    //             //       ),
    //             //     ],
    //             //   ),
    //             // ),

    //             Buttons(),
    //             PageTabBar(),
    //             TabPages(),
      
    //             // Create tab bar
    //             // const Padding(
    //             //   padding: EdgeInsets.only(top: 14),
    //             //   child: TabBar(
    //             //     isScrollable: true,
    //             //     labelStyle: TextStyle(
    //             //       fontSize: 15,
    //             //       fontWeight: FontWeight.w500,
    //             //     ),
    //             //     indicatorSize: TabBarIndicatorSize.label,
    //             //     indicatorPadding: EdgeInsets.only(top: 12),
    //             //     tabs: [
    //             //       Text('Home'),
    //             //       Text('Videos'),
    //             //       Text('Shorts'),
    //             //       Text('Community'),
    //             //       Text('Playlists'),
    //             //       Text('Channels'),
    //             //       Text('About'),
    //             //     ],
    //             //   ),
    //             // ),

    //             // const Expanded(
    //             //   child: TabBarView(
    //             //     children: [
    //             //       Center(
    //             //         child: Text('Home'),
    //             //       ),
    //             //       Center(
    //             //         child: Text('Videos'),
    //             //       ),
    //             //       Center(
    //             //         child: Text('Shorts'),
    //             //       ),
    //             //       Center(
    //             //         child: Text('Community'),
    //             //       ),
    //             //       Center(
    //             //         child: Text('Playlists'),
    //             //       ),
    //             //       Center(
    //             //         child: Text('Channel'),
    //             //       ),
    //             //       Center(
    //             //         child: Text('About'),
    //             //       ),
    //             //     ],
    //             //   ),
    //             // ),
    //           ],
    //         ),
    //       ),
    //     ),
    //   ),
    // );
  }
}
