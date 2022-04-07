import 'package:exercise/widgets/app_large_text.dart';
import 'package:exercise/widgets/responsive_circle.dart';
import 'package:flutter/material.dart';
class MyPage extends StatefulWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  @override
  Widget build(BuildContext context) {
    onTap(){
      return Colors.grey;
    }
    return Scaffold(
      body: Column(
        children: [
          Container(
              margin: const EdgeInsets.only(left: 20, top: 30,),
              child: Row(
                children: [
                  Icon(Icons.menu),
                  Container(
                    margin: const EdgeInsets.only(left: 60, right: 60),
                    child: AppLargeText(text: "Collections", color: Colors.red, size: 30,),
                  ),
                  Icon(Icons.search)
                ],
              )

          ),
          Expanded(child: Container()),
          Row(
            children: [
              Container(
                child: ResponsiveCircle(width: 20, height: 20,),
              ),
              Expanded(child: Container()),
              Container(
                child: ResponsiveCircle(width: 40, height: 40, color: onTap(),),
              ),
              Container(
                child: ResponsiveCircle(width: 40, height: 40, color: onTap(),),
              ),
            ],
          )
        ],
      ),
    );
  }
}

