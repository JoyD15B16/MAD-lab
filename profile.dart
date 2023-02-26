import 'package:flutter/material.dart';
import 'package:wynk/Pages/bgtheme.dart';
class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: const [
           Bgtheme(),
           Center(
             child: Text(
                'Profile',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 50,
                ),
              ),
           ),
        ],
      ),
    );
  }
}