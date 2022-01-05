import 'package:flutter/material.dart';

class ArcPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width, size.height);
    final arcPaint = Paint()
      ..color = const Color(0xFFD0EAF9).withOpacity(0.7)
      ..strokeWidth = 30
      ..style = PaintingStyle.stroke;

    canvas.drawArc(
      Rect.fromCenter(
        center: center,
        width: size.width,
        height: size.height,
      ),
      size.width / 4,
      10.0,
      false,
      arcPaint,
    );
  }

  @override
  bool shouldRepaint(ArcPainter oldDelegate) => false;

  @override
  bool shouldRebuildSemantics(ArcPainter oldDelegate) => false;
}
