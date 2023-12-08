import 'package:flutter/material.dart';
import 'package:tunes_player_app/core/utils/app_colors.dart';
import 'package:tunes_player_app/core/utils/app_strings.dart';
import 'package:tunes_player_app/core/widgets/custom_container.dart';
import 'package:tunes_player_app/features/models/tune_model.dart';

class TuneScreen extends StatelessWidget {
  const TuneScreen({super.key});

  final List<TuneModel> tunes = const [
    TuneModel(color: Color(0xffF44336), sound: 'note1.wav'),
    TuneModel(color: Color(0xffF89800), sound: 'note2.wav'),
    TuneModel(color: Color(0xffFEEB3B), sound: 'note3.wav'),
    TuneModel(color: Color(0xff4CAF50), sound: 'note4.wav'),
    TuneModel(color: Color(0xff2F9688), sound: 'note5.wav'),
    TuneModel(color: Color(0xff2896F3), sound: 'note6.wav'),
    TuneModel(color: Color(0xff9C27B0), sound: 'note7.wav'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text(AppStrings.appName),
        centerTitle: true,
        backgroundColor: AppColors.appPar,
      ),
      body: Column(
        children: tunes
            .map(
              (e) => CustomConrainer(
                tune: e,
              ),
            )
            .toList(),
      ),
    );
  }
}
