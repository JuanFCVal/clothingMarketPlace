import 'package:flutter/material.dart';

class ComponentService {
  static showErrorSnackBar(context, message) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      backgroundColor: Colors.red,
      content: Text(
        message,
        style: const TextStyle(color: Colors.white),
      ),
    ));
  }

  static showSucessSnackBar(context, message) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      backgroundColor: Colors.green,
      content: Text(
        message,
        style: const TextStyle(color: Colors.white),
      ),
    ));
  }
}
