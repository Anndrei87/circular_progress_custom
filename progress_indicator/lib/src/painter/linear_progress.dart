import 'package:flutter/material.dart';

class LinearProgressIndicatorr extends CustomPainter {
  final double currentProgress;
  LinearProgressIndicatorr(this.currentProgress);

  @override
  void paint(Canvas canvas, Size size) {
    Paint line = Paint()
      ..strokeWidth = 20
      ..color = Colors.black
      ..style = PaintingStyle.stroke;

    Offset point1 = const Offset(0, 0);
    Offset point2 = Offset(size.width, 0);
    Offset point3 = Offset((currentProgress / 100) * size.width, 0);

    canvas.drawLine(point1, point2, line);

    Paint animationLine = Paint()
      ..strokeWidth = 20
      ..color = Colors.purpleAccent
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.butt;

    canvas.drawLine(point1, point3, animationLine);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
