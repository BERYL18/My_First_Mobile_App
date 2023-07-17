import 'package:flutter/material.dart';

final messengerKey = GlobalKey<ScaffoldMessengerState>();

class Utils {
  static showSnackBar(String? text) {
    if (text == null) return;
    final snackBar = SnackBar(
      content: Text(text),
      backgroundColor: Colors.red.shade400,
    );

    messengerKey.currentState!
      ..removeCurrentSnackBar()
      ..showSnackBar(snackBar);
  }

  static showValidSnackBar(String? text) {
    if (text == null) return;
    final snackBar = SnackBar(
      content: Text(text),
      backgroundColor: Colors.green,
    );

    messengerKey.currentState!
      ..removeCurrentSnackBar()
      ..showSnackBar(snackBar);
  }
}
