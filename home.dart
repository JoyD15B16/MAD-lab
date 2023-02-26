import 'package:flutter/material.dart';
import 'package:wynk/Pages/music_card.dart';
import 'package:wynk/Pages/ad_card.dart';
import 'package:wynk/Pages/bgtheme.dart';
import 'package:wynk/Pages/search_bar.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<String> music = <String>[
   'Brown_Munde',
   'Unholy',
   '7_Years',
   'Sunroof',
   'Calm_Down',
  ];
  final List<String> mlabel = <String>[
   'Brown Munde',
   'Unholy',
   '7 Years',
   'Sunroof',
   'Calm Down',
  ];
  final List<String> rmusic = <String>[
    'Sunroof',
    'Calm_Down',
    '7_Years',
    'Brown_Munde',
     'Unholy',
  ];

    final List<String> rmlabel = <String>[
    'Sunroof',
    'Calm Down',
    '7 Years',
    'Brown Munde',
     'Unholy',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          const Bgtheme(),
          SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.vertical,
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const SearchBar(),
              const Adcard(),
              const Text(
                'Recently played',
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                child: SizedBox(
                  height: 200,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: music.length,
                    itemBuilder: (BuildContext context, int index) {
                      return MusicCard(
                        names: music[index],
                        label: mlabel[index],
                      );
                    },
                  ),
                ),
              ),
              const Text(
                'Most played',
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                child: SizedBox(
                  height: 200,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: rmusic.length,
                    itemBuilder: (BuildContext context, int index) {
                      return MusicCard(
                        names: rmusic[index],
                        label: rmlabel[index],
                      );
                    },
                  ),
                ),
              ),
            ]),
          )
        ],
      ),
    );
  }
}
