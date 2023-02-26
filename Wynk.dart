// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:wynk/Pages/loading.dart';
import 'package:wynk/Pages/login.dart';
import 'package:wynk/Pages/mainpage.dart';
class Wynk extends StatelessWidget {
  const Wynk({super.key});
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
           initialRoute: '/',
          routes: {
            '/' : (context)=> const Loading(),
            '/login' : (context)=> const Login(),
            '/mainpage' :(context) =>  const Mainpage(),
          },
    );
  }
}