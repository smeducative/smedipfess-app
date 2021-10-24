import 'package:flutter/material.dart';

class AppColorTheme {
  static const Color kPrimary = Color(0xFF094542);
  static const Color primarySoft = Color(0xFF0B5551);
  static const Color primaryExtraSoft = Color(0xFFEEF4F4);
  static const Color secondary = Color(0xFFEDE5CC);
  static const Color whiteSoft = Color(0xFFF8F8F8);
  static const Color secondaryYellow = Color(0xFFFFAB00);

  static LinearGradient bottomShadow = LinearGradient(
    colors: [
      const Color(0xFF107873).withOpacity(0.2),
      const Color(0xFF107873).withOpacity(0.0),
    ],
    begin: Alignment.bottomCenter,
    end: Alignment.topCenter,
  );
}
