import 'package:flutter/material.dart';
import 'package:tunes/models.dart';

import '../components/cont_info.dart';

class HomePage extends StatelessWidget {
  final List<String> sounds = [
    'note1.wav',
    'note2.wav',
    'note3.wav',
    'note4.wav',
    'note5.wav',
    'note6.wav',
    'note7.wav',
  ];

  final List<Color> colors = [
    Color(0xff08D9D6),
    Color(0xff050C9C),
    Color(0xff252A34),
    Color(0xffFF2E63),
    Color(0xff478CCF),
    Color(0xff903749),
    Color(0xff53354A),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'FLUTTER TUNE',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Color(0xFF252A34),
      ),
      body: Column(
        children: List.generate(sounds.length, (index) {
          return ContInfo(
            models: Dash(sound: sounds[index]),
            color: colors[index],
          );
        }),
      ),
      backgroundColor: Colors.black,
    );
  }
}
