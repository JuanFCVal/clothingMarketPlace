import 'package:flutter/material.dart';

class ButtonsDecoration {
  static ButtonStyle buttonPrimaryStyle({
    required BuildContext context,
    required double elevation,
  }) {
    return ButtonStyle(
        backgroundColor:
            MaterialStateProperty.all<Color>(Theme.of(context).primaryColor),
        elevation: MaterialStateProperty.all<double>(elevation),
        shape: MaterialStateProperty.all<OutlinedBorder>(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))));
  }

  static ButtonStyle secondaryStyle({
    required BuildContext context,
    required double elevation,
  }) {
    return ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(
            const Color.fromRGBO(250, 216, 219, 1)),
        elevation: MaterialStateProperty.all<double>(elevation),
        shape: MaterialStateProperty.all<OutlinedBorder>(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))));
  }

  static ButtonStyle tertiaryStyle({
    required BuildContext context,
  }) {
    return ButtonStyle(
        shape: MaterialStateProperty.all<OutlinedBorder>(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))));
  }

  static ButtonStyle categoryStyle({
    required BuildContext context,
    required double elevation,
  }) {
    return ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
        elevation: MaterialStateProperty.all<double>(elevation),
        shape: MaterialStateProperty.all<OutlinedBorder>(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))));
  }
}
