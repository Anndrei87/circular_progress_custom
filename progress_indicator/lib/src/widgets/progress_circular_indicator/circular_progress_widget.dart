import 'package:flutter/material.dart';
import 'package:progress_indicator/src/painter/circular_progress.dart';

class CircularProgressCustom extends StatelessWidget {
  final Animation<double> animation;
  const CircularProgressCustom({
    Key? key,
    required this.animation,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      foregroundPainter: CircleProgress(animation.value),
      child: SizedBox(
        width: 300,
        height: 300,
        child: Center(
          child: Text(
            '${animation.value.toInt()}%',
            style: const TextStyle(fontSize: 50),
          ),
        ),
      ),
    );
  }
}
