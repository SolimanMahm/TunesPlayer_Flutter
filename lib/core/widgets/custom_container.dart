import 'package:flutter/material.dart';

import '../../features/models/tune_model.dart';

class CustomConrainer extends StatelessWidget {
  const CustomConrainer({
    super.key,
    required this.tune,
  });

  final TuneModel tune;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          tune.playSound();
        },
        child: Container(
          width: double.infinity,
          color: tune.color,
        ),
      ),
    );
  }
}
