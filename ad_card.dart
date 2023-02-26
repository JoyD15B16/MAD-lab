import 'package:flutter/material.dart';

class Adcard extends StatelessWidget {
  const Adcard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(20, 20,20, 25),
      width: MediaQuery.of(context).size.width * 0.9,
      height: MediaQuery.of(context).size.height * 0.25,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: const DecorationImage(
          image: AssetImage('assets/image/ad.webp'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
