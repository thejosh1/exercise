import 'package:flutter/material.dart';

class ResponsiveCircle extends StatelessWidget {
  double width;
  double height;
  final Color color;
  ResponsiveCircle({Key? key, required this.width, required this.height, this.color=Colors.red}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
        child: Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
            color: color,
            shape: BoxShape.circle
          ),
        )
    );
  }
}
