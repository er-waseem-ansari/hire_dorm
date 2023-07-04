import 'package:flutter/material.dart';

import '../../../constants/colors.dart';
import '../../../constants/sizes.dart';

class ThisOutlinedButtonTheme {
  ThisOutlinedButtonTheme._();

  static final lightOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
        shape: RoundedRectangleBorder(),
        foregroundColor: thisSecondaryColor,
        side: BorderSide(color: thisSecondaryColor),
        backgroundColor: thisPrimaryColor,
        padding: EdgeInsets.symmetric(vertical: thisButtonHeight)
    ),
  );


  static final darkOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
        shape: RoundedRectangleBorder(),
        foregroundColor: thisWhiteColor,
        side: BorderSide(color: thisWhiteColor),
        backgroundColor: thisSecondaryColor,
        padding: EdgeInsets.symmetric(vertical: thisButtonHeight)
    ),
  );
}