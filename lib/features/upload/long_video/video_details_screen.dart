import 'package:flutter/material.dart';

class VideoDetailsScreen extends StatelessWidget {
  const VideoDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: SafeArea(
      child: Padding(
        padding: EdgeInsets.only(top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Enter the title',
              style: TextStyle(
                fontSize: 15,
                color: Colors.grey,
              ),
            ),

            SizedBox(height: 5,),

            TextField(
              decoration: InputDecoration(
                labelText: 'Enter title',
                prefixIcon: Icon(Icons.title),
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.blue,
                  ),
                ),
              ),
            ),

            Text(
              'Enter the description',
              style: TextStyle(
                fontSize: 15,
                color: Colors.grey,
              ),
            ),

            SizedBox(height: 5,),

            TextField(
              decoration: InputDecoration(
                labelText: 'Enter description',
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.blue,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
