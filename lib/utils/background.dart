import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  const Background({
    Key? key,
    required this.child,
    required this.padding,
  }) : super(key: key);

  final Widget child;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF2A2A2A),
      body: SafeArea(
        child: Padding(
          padding: padding,
          child: child,
        ),
      ),
    );
  }
}
