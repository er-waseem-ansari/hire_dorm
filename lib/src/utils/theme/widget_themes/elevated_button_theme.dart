import 'package:flutter/material.dart';
import 'package:hire_dorm/src/constants/colors.dart';

import '../../../constants/sizes.dart';

class ThisElevatedButtonTheme {
  ThisElevatedButtonTheme._();

  static final lightElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
        elevation: 0,
        shape: RoundedRectangleBorder(),
        foregroundColor: thisWhiteColor,
        backgroundColor: thisSecondaryColor,
        side: BorderSide(color: thisSecondaryColor),
        padding: EdgeInsets.symmetric(vertical: thisButtonHeight)
    ),
  );

  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
        elevation: 0,
        shape: RoundedRectangleBorder(),
        foregroundColor: thisSecondaryColor,
        backgroundColor: thisWhiteColor,
        side: BorderSide(color: thisWhiteColor),
        padding: EdgeInsets.symmetric(vertical: thisButtonHeight)
    ),
  );
}