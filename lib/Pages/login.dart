import 'dart:math';

import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String uName = "Rahul17#";
  String uPassword = "Password123@";
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        // ignore: avoid_unnecessary_containers
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            color: Colors.black87,
          ),
          child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 30, 0, 5),
                    child: const CircleAvatar(
                      radius: 55,
                      backgroundImage: AssetImage('assets/image/wynk.png'),
                    ),
                  ),
                  const Text(
                    'Wynk',
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontFamily: 'OpenSans-ExtraBold.ttf',
                    ),
                  ),

                  Container(
                    margin:const EdgeInsets.symmetric(vertical:2.5,horizontal :2),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 2, horizontal: 5),
                      child: userName(),
                    ),
                  ),
                  Container(
                     margin:const EdgeInsets.symmetric(vertical:2.5,horizontal :2),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 2, horizontal: 5),
                      child: userPassword(),
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  submitButton(),
                ],
              )),
        ),
      ),
    );
  }

  Widget userName() {
    return TextFormField(
      style: const TextStyle(
        fontSize: 20,
        color: Colors.white,
      ),
      keyboardType: TextInputType.emailAddress,
      decoration: const InputDecoration(
        labelText: 'Username',
        hintText: 'Rahul17#',
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.red),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.red),
        ),
        labelStyle: TextStyle(
          color: Colors.white,
        ),
        hintStyle: TextStyle(
          color: Colors.white,
        ),
      ),
      validator: (value) {
        RegExp regex = RegExp(
            r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
        if (value!.isEmpty) {
          return 'Please enter password';
        } else if (!regex.hasMatch(value)) {
          return 'Enter valid password';
        } else if (value != uName) {
          return 'Wrong UserName';
        } else {
          return null;
        }
      },
    );
  }

  Widget userPassword() {
    return TextFormField(
      style: const TextStyle(
        fontSize: 20,
        color: Colors.white,
      ),
      obscureText: true,
      decoration: const InputDecoration(
        labelText: 'Userpassword',
        hintText: 'Password123@',
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.red),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.red),
        ),
        labelStyle: TextStyle(
          color: Colors.white,
        ),
        hintStyle: TextStyle(
          color: Colors.white,
        ),
      ),
      validator: (value) {
        RegExp regex = RegExp(
            r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
        if (value!.isEmpty) {
          return 'Please enter password';
        } else if (!regex.hasMatch(value)) {
          return 'Enter valid password';
        } else if (value != uPassword) {
          return 'Wrong Password';
        } else {
          return null;
        }
      },
    );
  }

  Widget submitButton() {
    return SizedBox(
      height: 50,
      width: 200,
      child: ElevatedButton(
          style: const ButtonStyle(
            backgroundColor:
                MaterialStatePropertyAll(Color.fromARGB(255, 205, 27, 15)),
          ),
          onPressed: () {
           if( _formKey.currentState!.validate()){
              Navigator.pushNamed(context,'/home');
           }
          },
          child: const Text(
            'Login',
            style: TextStyle(
              fontSize: 20,
            ),
          )),
    );
  }
}
