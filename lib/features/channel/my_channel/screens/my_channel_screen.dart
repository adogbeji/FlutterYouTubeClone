import 'package:flutter/material.dart';

import 'package:youtube_clone/cores/widgets/image_button.dart';

class MyChannelScreen extends StatelessWidget {
  const MyChannelScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Column(
            children: [
              const Center(
                child: CircleAvatar(
                  radius: 38,
                  backgroundColor: Colors.grey,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(
                  top: 10,
                  bottom: 4,
                ),
                child: Text(
                  'Display Name',
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 9),
                child: RichText(
                  text: const TextSpan(
                    style: TextStyle(
                      color: Colors.blueGrey,
                    ),
                    children: [
                      TextSpan(text: '@display-name '),
                      TextSpan(text: 'No subscriptions '),
                      TextSpan(text: 'No videos'),
                    ],
                  ),
                ),
              ),

              const Text('More about this channel'),

              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: const BorderRadius.all(Radius.circular(10),),
                    ),
                    child: TextButton(
                      onPressed: () {},
                      child: const Text('Manage Videos', style: TextStyle(
                        color: Colors.black,
                      ),),
                    ),
                  ),

                  ImageButton(
                    onPressed: () {}, 
                    image: 'pen.png', 
                    haveColor: true,
                  ),

                  ImageButton(
                    onPressed: () {}, 
                    image: 'time-watched.png', 
                    haveColor: true,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
