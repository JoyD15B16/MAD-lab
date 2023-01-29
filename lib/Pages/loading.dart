// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {
  const Loading({super.key});
  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  void loadtime() async {
   await Future.delayed(const Duration(seconds: 5), (() {}));
   // ignore: use_build_context_synchronouslys
   Navigator.pushReplacementNamed(context,'/login');
  }

  @override
  void initState(){
    super.initState(); 
    loadtime();   
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: AssetImage('assets/image/wynk-music-first.webp'),
          fit: BoxFit.fill,
        )),
        child: const Center(
          child: SpinKitRing(
            color: Color.fromARGB(255, 95, 95, 95),
            size: 100.0,
          ),
        ),
      ),
    );
  }
}
