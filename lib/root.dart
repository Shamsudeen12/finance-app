import 'package:flutter/material.dart';

import 'UI/welcome/welcome.dart';
import 'utils/utils.dart';

class FinanceApp extends StatelessWidget {
  const FinanceApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = FinanceAppTheme.dark();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme,
      home: const WelcomeScreen(),
    );
  }
}
