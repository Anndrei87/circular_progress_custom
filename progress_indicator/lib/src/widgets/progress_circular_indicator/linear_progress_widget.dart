import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:progress_indicator/src/painter/linear_progress.dart';

class LinearProgressCustom extends StatelessWidget {
  final Animation<double> animation;
  const LinearProgressCustom({
    Key? key,
    required this.animation,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      foregroundPainter: LinearProgressIndicatorr(animation.value),
      child: Stack(children: [
        const SizedBox(
          width: 300,
          height: 50,
        ),
        Positioned.fill(
          child: Align(
            alignment: Alignment.center,
            child: Text(
              '${animation.value.toInt()}%',
              style: const TextStyle(
                fontSize: 30,
              ),
            ),
          ),
        )
      ]),
    );
  }
}
