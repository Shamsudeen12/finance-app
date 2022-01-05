import 'package:flutter/material.dart';

class PositionedCustomPainter extends StatelessWidget {
  const PositionedCustomPainter({
    Key? key,
    required this.size,
    required this.painter,
    required this.distance,
  }) : super(key: key);

  final double size;
  final CustomPainter painter;
  final double distance;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: distance,
      bottom: distance,
      child: SizedBox(
        height: size,
        width: size,
        child: CustomPaint(
          painter: painter,
        ),
      ),
    );
  }
}
