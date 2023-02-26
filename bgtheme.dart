import 'package:flutter/material.dart';

class Bgtheme extends StatefulWidget {
  const Bgtheme({super.key});

  @override
  State<Bgtheme> createState() => _BgthemeState();
}

class _BgthemeState extends State<Bgtheme> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.8,
      decoration: BoxDecoration(
          gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomCenter,
        colors: [
          Colors.white.withOpacity(0.5),
          Colors.white.withOpacity(0.1),
          Colors.black.withOpacity(0),
        ],
      )),
    );
  }
}
