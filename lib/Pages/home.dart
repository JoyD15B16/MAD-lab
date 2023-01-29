import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Home',
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
          const Center(
            child: Text(
              'Home',
              style: TextStyle(
                fontSize: 50,
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
               Navigator.pushNamed(context,'/profile');
            }, 
            child:const Text('Next'), 
            )   
        ]),
      ),
    );
  }
}
