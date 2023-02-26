import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(20, 40, 20, 10),
      width: MediaQuery.of(context).size.width * 0.9,
      height: MediaQuery.of(context).size.height * 0.065,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.grey[850],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: const [
          Icon(
            Icons.search,
            size:50,
            color: Colors.grey,
          ),
        ],
      ),
    );
  }
}
