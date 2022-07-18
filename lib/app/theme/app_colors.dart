import 'package:flutter/material.dart';
// import 'package:flutter/painting.dart';

class AppColors {
  static const MaterialColor primaryBlueMaterial = MaterialColor(
    _primaryBlueValue,
    <int, Color>{
      50: Color(0xFF7797F6),
      100: Color(0xFF6787E7),
      200: Color(0xFF4D69BC),
      300: Color(0xFF3F57A1),
      400: Color(0xFF364C8C),
      500: Color(_primaryBlueValue),
      600: Color(0xFF183076),
      700: Color(0xFF122A73),
      800: Color(0xFF122A73),
      900: Color(0xFF122A73),
    },
  );
  static const _primaryBlueValue = 0xff1e367c;

  static const primaryBlue = Color(0xff1e367c);
  static const secondaryBlue = Color(0xFF27459C);
}
