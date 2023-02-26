import 'package:flutter/material.dart';

  class MusicCard extends StatelessWidget {

  const MusicCard(
    { super.key,required this.names,required this.label});

  final String names;
  final String label;
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.fromLTRB(0,10,20,0),
        decoration: BoxDecoration(
           borderRadius: BorderRadius.circular(4),
        ),
       child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
           children:  [
            Image(
              width: 120,
              height: 120,
              image: AssetImage("assets/image/$names.jpeg"),
              fit: BoxFit.cover,
            ),
             const SizedBox(height: 10,width: 10,),
             Text(
              label,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            )
           ],
            
       ) 
    );
  }
}
