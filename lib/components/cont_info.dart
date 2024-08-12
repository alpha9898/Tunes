import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:tunes/models.dart';

class ContInfo extends StatelessWidget {
  const ContInfo({super.key, required this.models, required this.color});

  final Dash models;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        final player = AudioPlayer();
        player.play(AssetSource(models.sound));
      },
      child: Container(
        color: color,
        height: 100,
        width: double.infinity,
      ),
    );
  }
}
