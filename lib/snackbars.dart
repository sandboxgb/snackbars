library snackbars;

import 'package:flutter/material.dart';

class IconTextSnackBar extends SnackBar {
  final String message;
  final Icon icon;

  IconTextSnackBar(
      {Key? key,
      required this.message,
      required this.icon,
      Color? backgroundColor})
      : super(
            key: key,
            backgroundColor: backgroundColor,
            content: Row(children: [
              icon,
              const SizedBox(width: 20),
              Expanded(child: Text(message))
            ]));
}

class SnackBars {
  static void show(BuildContext context,
      {required String message,
      Icon icon = const Icon(Icons.label),
      Color? backgroundColor = Colors.blue}) {
    ScaffoldMessenger.of(context).showSnackBar(IconTextSnackBar(
        icon: icon, message: message, backgroundColor: backgroundColor));
  }

  static void error(BuildContext context, {required String message}) {
    show(context,
        message: message,
        icon: const Icon(Icons.error),
        backgroundColor: Colors.red);
  }

  static void success(BuildContext context, {required String message}) {
    show(context,
        message: message,
        icon: const Icon(Icons.check_circle),
        backgroundColor: Colors.green);
  }

  static void info(BuildContext context, {required String message}) {
    show(context, message: message);
  }

  static void warning(BuildContext context, {required String message}) {
    show(context,
        message: message,
        icon: const Icon(Icons.error_outline),
        backgroundColor: Colors.orange);
  }
}
