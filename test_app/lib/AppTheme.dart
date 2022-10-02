
import 'package:flutter/material.dart';

ThemeData _AppTheme(){

  return ThemeData(
      accentColor: Color(0xFF442B2D),
      primaryColor: Color(0xFFFEDBD0),
      buttonColor: Color(0xFFFEDBD0),
      scaffoldBackgroundColor: Colors.white,
      cardColor: Color(0xFF883B2D),
      textSelectionTheme: TextSelectionThemeData(
      selectionColor: Color(0xFFFEDBD0),
  ),
  errorColor: Colors.red,
  buttonTheme: ThemeData.dark().buttonTheme.copyWith(
  buttonColor: Color(0xFF442B2D),
  colorScheme: ThemeData.dark().colorScheme.copyWith(
    secondary: Color(0xFF442B2D),
  ),
  ),
  buttonBarTheme: ThemeData.light().buttonBarTheme.copyWith(
  buttonTextTheme: ButtonTextTheme.accent,
  ),
  primaryIconTheme: ThemeData.light().primaryIconTheme.copyWith(
  color: Color(0xFF442B2D),
  ),
  );
}