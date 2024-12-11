import 'dart:io';

import 'package:flutter/material.dart';
import 'package:youtube_clone/cores/methods.dart';

class VideoDetailsScreen extends StatefulWidget {
  const VideoDetailsScreen({super.key});

  @override
  State<VideoDetailsScreen> createState() => _VideoDetailsScreenState();
}

class _VideoDetailsScreenState extends State<VideoDetailsScreen> {
  final titleController = TextEditingController();
  final descriptionController = TextEditingController();
  bool isThumbnailSelected = false;
  File? image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Enter the title',
              style: TextStyle(
                fontSize: 15,
                color: Colors.grey,
              ),
            ),

            const SizedBox(height: 5,),

            TextField(
              controller: titleController,
              decoration: const InputDecoration(
                labelText: 'Enter title',
                prefixIcon: Icon(Icons.title),
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.blue,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 10,),

            const Text(
              'Enter the description',
              style: TextStyle(
                fontSize: 15,
                color: Colors.grey,
              ),
            ),

            const SizedBox(height: 5,),

            TextField(
              maxLines: 5,
              controller: descriptionController,
              decoration: const InputDecoration(
                labelText: 'Enter description',
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.blue,
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 12),
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.all(Radius.circular(11),),
                ),
                child: TextButton(
                  onPressed: () async {
                    image = await pickImage();
                    isThumbnailSelected = true;
                    setState(() {});
                  },
                  child: const Text('SELECT THUMBNAIL', style: TextStyle(color: Colors.white,),),
                ),
              ),
            ),
            isThumbnailSelected ? Image.file(image!, cacheHeight: 160, cacheWidth: 400,): SizedBox(), 

            isThumbnailSelected ? Padding(
              padding: const EdgeInsets.only(top: 12),
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.all(Radius.circular(11),),
                ),
                child: TextButton(
                  onPressed: () {},
                  child: const Text('PUBLISH', style: TextStyle(color: Colors.white,),),
                ),
              ),
            ): const SizedBox(),
          ],
        ),
      ),
    ));
  }
}
