import 'package:flutter/material.dart';
import 'package:hire_dorm/src/constants/colors.dart';
class ThisTextFormFieldTheme {
  ThisTextFormFieldTheme._();

  static InputDecorationTheme lightInputDecorationTheme =
      const InputDecorationTheme(
        border: OutlineInputBorder(),
        prefixIconColor: thisSecondaryColor,
        floatingLabelStyle: TextStyle(color: thisSecondaryColor),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 2, color: thisSecondaryColor),

        )
      );
  static InputDecorationTheme darkInputDecorationTheme =
      const InputDecorationTheme(
        border: OutlineInputBorder(),
        prefixIconColor: thisPrimaryColor,
        floatingLabelStyle: TextStyle(color: thisPrimaryColor),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 2, color: thisPrimaryColor),
        )
      );
}