import 'package:flutter/material.dart';
import 'package:tunes/models/tune_model.dart';

import '../widgets/tune_item.dart';

class TuneView extends StatelessWidget {
  const TuneView({super.key});
  final List<TuneModel> tunes = const [
    TuneModel(color: Color(0xff201E43), sound: 'note1.wav'),
    TuneModel(color: Color(0xff134B70), sound: 'note2.wav'),
    TuneModel(color: Color(0xff508C9B), sound: 'note3.wav'),
    TuneModel(color: Color(0xffEEEEEE), sound: 'note4.wav'),
    TuneModel(color: Color(0xff3A1078), sound: 'note5.wav'),
    TuneModel(color: Color(0xff4E31AA), sound: 'note6.wav'),
    TuneModel(color: Color(0xff3795BD), sound: 'note7.wav'),
    TuneModel(color: Color(0xffF7F7F8), sound: 'note1.wav')

  ];
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
          children: tunes
              .map(
                (e) => TuneItem(tune: e),
              )
              .toList()),
    );
  }

  // List<TuneItem> getTuneItems() {
  //   List<TuneItem> items = [];
  //   for (var color in tuneColors) {
  //     items.add(TuneItem(color: color));
  //   }
  //   return items;
  // }
}
