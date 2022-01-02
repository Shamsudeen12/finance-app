import 'package:finance/utils/utils.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF3D3B46),
      body: SafeArea(
        child: Padding(
          padding: padding24,
          child: Column(
            children: [
              Text(
                'Set your \nFinancial \nGoals',
                style: Theme.of(context).textTheme.headline1,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
