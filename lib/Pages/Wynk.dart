// ignore: file_names
import 'package:flutter/material.dart';
import 'package:wynk/Pages/loading.dart';
import 'package:wynk/Pages/login.dart';
import 'package:wynk/Pages/home.dart';
import 'package:wynk/Pages/profile.dart';
class Wynk extends StatelessWidget {
  const Wynk({super.key});
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
           initialRoute: '/',
          routes: {
            '/' : (context)=> const Loading(),
            '/login' : (context)=> const Login(),
            '/home': (context)=> const Home(),
            '/profile' :(context) => const Profile(),
          },
    );
  }
}