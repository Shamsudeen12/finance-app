import 'package:finance/utils/utils.dart';
import 'package:flutter/material.dart';

import 'components/components.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF2A2A2A),
      body: SafeArea(
        child: Padding(
          padding: padding24,
          child: Stack(
            children: [
              Positioned(
                top: 50,
                child: Text(
                  'Set your \nFinancial \nGoals',
                  style: Theme.of(context).textTheme.headline1,
                ),
              ),
              Positioned(
                top: 250,
                child: Text(
                  'Our smart finance app will keep you\nrecords stats and track',
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ),
              PositionedCustomPainter(
                size: 100,
                painter: CirclePainter(),
                distance: 100,
              ),
              PositionedCustomPainter(
                size: 120,
                distance: 25,
                painter: ArcPainter(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
