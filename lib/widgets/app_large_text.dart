import 'package:flutter/material.dart';

class AppLargeText extends StatelessWidget {
  final Color color;
  double size;
  final String text;
  AppLargeText({Key? key, required this.color, required this.text, required this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: size,
        fontWeight: FontWeight.bold
      ),
    );
  }
}
