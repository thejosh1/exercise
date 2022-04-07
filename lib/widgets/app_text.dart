import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  final String text;
  double size;
  final Color color;
  AppText({Key? key, required this.text, this.color=Colors.black, this.size=16}) : super(key: key);

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
