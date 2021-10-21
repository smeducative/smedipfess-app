import 'package:flutter/material.dart';
import 'package:smedipfess/constants/theme.dart';
import 'package:smedipfess/screens/welcome_screen/welcome_screen.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const WelcomeScreen(),
      theme: ThemeData(
        primaryColor: AppColorTheme.kPrimary,
        scaffoldBackgroundColor: Colors.white,
        fontFamily: 'inter',
      ),
    ),
  );
}
