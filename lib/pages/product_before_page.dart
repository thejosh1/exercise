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
    return Scaffold(
      body: Column(
        children: [
          Container(
              margin: EdgeInsets.only(left: MediaQuery.of(context).size.width/18, top: MediaQuery.of(context).size.height/14.6,),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(Icons.menu),
                  Container(
                    margin: EdgeInsets.only(left: MediaQuery.of(context).size.width/6, right: MediaQuery.of(context).size.width/6),
                    child: AppLargeText(text: "Collections", color: Colors.red, size: MediaQuery.of(context).size.height/24.4,),
                  ),
                  const Icon(Icons.search)
                ],
              )

          ),
          Expanded(child: Container()),
         Row(
            children: [
              Container(
                height: MediaQuery.of(context).size.height/2.4,
                padding: EdgeInsets.only(left: MediaQuery.of(context).size.width/36),
                child: ResponsiveCircle(width: MediaQuery.of(context).size.width/36, height: MediaQuery.of(context).size.height/73,),
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

