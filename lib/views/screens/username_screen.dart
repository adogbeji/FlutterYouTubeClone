import 'package:flutter/material.dart';
import 'package:youtube_clone/cores/widgets/flat_button.dart';

class UsernameScreen extends StatelessWidget {
  const UsernameScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(
                vertical: 26,
                horizontal: 14,
              ),
              child: Text(
                'Enter Username',
                style: TextStyle(
                  color: Colors.blueGrey,
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(
                left: 15,
                right: 15,
              ),
              child: TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Username',
                  hintText: 'Enter username...',
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.blue,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.blue,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.green,
                    ),
                  ),
                  suffixIcon: Icon(Icons.verified_user_rounded),
                  suffixIconColor: Colors.green,
                ),
              ),
            ),

            const Spacer(),

            Padding(
              padding: const EdgeInsets.only(
                left: 8,
                right: 8,
                bottom: 30,
              ),
              child: FlatButton(text: 'CONTINUE', onPressed: () {}, colour: Colors.green,),
            ),
          ],
        ),
      ),
    );
  }
}
