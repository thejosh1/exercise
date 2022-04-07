import 'package:exercise/widgets/app_large_text.dart';
import 'package:exercise/widgets/responsive_circle.dart';
import 'package:flutter/material.dart';
class ProductBeforePage extends StatefulWidget {
  const ProductBeforePage({Key? key}) : super(key: key);

  @override
  State<ProductBeforePage> createState() => _ProductBeforePageState();
}

class _ProductBeforePageState extends State<ProductBeforePage> {
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
                height: 300,
                padding: const EdgeInsets.only(left: 10),
                child: ResponsiveCircle(width: 10, height: 10,),
              ),
              Expanded(child: Container()),
              Container(
                margin: const EdgeInsets.only(right: 30),
                child: Row(
                    children:[
                      Container(
                        height: 50,
                        width: 50,
                        decoration: const BoxDecoration(
                            color: Colors.grey,
                            shape: BoxShape.circle
                        ),
                        child: const Icon(Icons.arrow_back, color: Colors.white,),
                      ),
                      const SizedBox(width: 10,),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: const BoxDecoration(
                          color: Colors.red,
                          shape: BoxShape.circle
                        ),
                        child: const Icon(Icons.arrow_forward, color: Colors.white,),
                      )
                    ]
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

