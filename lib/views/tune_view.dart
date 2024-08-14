import 'package:flutter/material.dart';

import '../widgets/tune_item.dart';

class TuneView extends StatelessWidget {
  const TuneView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Flutter Tune',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        elevation: 0,
        backgroundColor: const Color(0xff253238),
      ),
      body: Column(
        children: [
          TuneItem(
            color: Colors.cyan,
          ),
          TuneItem(
            color: Colors.blue,
          ),
          TuneItem(
            color: Colors.greenAccent,
          ),
          TuneItem(
            color: Colors.redAccent,
          ),
          TuneItem(
            color: Colors.brown,
          ),
          TuneItem(
            color: Colors.purpleAccent,
          ),
          TuneItem(
            color: Colors.cyan,
          ),
        ],
      ),
    );
  }
}
