// import 'dart:ui';

import 'package:flutter/material.dart';

class CirclePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width, size.height);
    final circlePaint = Paint()
      ..shader = const RadialGradient(
        radius: 0.9,
        center: Alignment.topLeft,
        colors: [
          Color(0xFFABA4B6), 
          Color(0xFF807C88),
          Color(0xFF75717B),
          Color(0xFF413F42), 
        ],
      ).createShader(
        Rect.fromCircle(center: center, radius: size.width),
      )
      ..strokeWidth = 50
      ..style = PaintingStyle.stroke;

    canvas.drawCircle(center, size.width, circlePaint);
  }

  @override
  bool shouldRepaint(CirclePainter oldDelegate) => false;

  @override
  bool shouldRebuildSemantics(CirclePainter oldDelegate) => false;
}
