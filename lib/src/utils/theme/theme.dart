import 'package:flutter/material.dart';
import 'package:hire_dorm/src/utils/theme/widget_themes/elevated_button_theme.dart';
import 'package:hire_dorm/src/utils/theme/widget_themes/outlined_button_theme.dart';
import 'package:hire_dorm/src/utils/theme/widget_themes/text_field_theme.dart';
import 'package:hire_dorm/src/utils/theme/widget_themes/text_theme.dart';

class ThisAppTheme {
  ThisAppTheme._();


  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    textTheme: ThisTextTheme.lightTextTheme,
    outlinedButtonTheme: ThisOutlinedButtonTheme.lightOutlinedButtonTheme,
    elevatedButtonTheme: ThisElevatedButtonTheme.lightElevatedButtonTheme,
    inputDecorationTheme: ThisTextFormFieldTheme.lightInputDecorationTheme
    );


  static ThemeData darkTheme = ThemeData(
      brightness: Brightness.dark,
      textTheme: ThisTextTheme.darkTextTheme,
    outlinedButtonTheme: ThisOutlinedButtonTheme.darkOutlinedButtonTheme,
    elevatedButtonTheme: ThisElevatedButtonTheme.darkElevatedButtonTheme,
    inputDecorationTheme: ThisTextFormFieldTheme.darkInputDecorationTheme,
  );
}