import 'package:flutter/material.dart';
import 'package:exercise/widgets/app_text.dart';

import 'app_text.dart';

class ResponsiveButton extends StatelessWidget {
  double? width;
  ResponsiveButton({Key? key, this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        width: width,
        height: 60,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.red
        ),
        child: Row(
          children: [
           Container(margin:const EdgeInsets.only(left: 20),
                child: AppText(text: "Next", color: Colors.white)
           ),
           const SizedBox(width: 5,),
            Icon(Icons.arrow_forward_sharp, color: Colors.white,)
          ],
        ),
      ),
    );
  }
}
