import 'package:flutter/material.dart';

class InputsDecoration {
  static InputDecoration inputPrimaryStyle({
    required BuildContext context,
    required String hintText,
    required String labelText,
  }) {
    return InputDecoration(
      labelText: labelText,
      hintText: hintText,
      hintStyle: TextStyle(
        color: Theme.of(context).primaryColor,
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: Theme.of(context).primaryColor,
        ),
        borderRadius: BorderRadius.circular(15),
      ),
    );
  }
}
