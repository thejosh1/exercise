import 'package:exercise/widgets/app_text.dart';
import 'package:flutter/material.dart';

import '../widgets/app_large_text.dart';

class DragAnimations extends StatefulWidget {
  const DragAnimations({Key? key}) : super(key: key);

  @override
  State<DragAnimations> createState() => _DragAnimationsState();
}

class _DragAnimationsState extends State<DragAnimations> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
            children: [
              Container(
          margin: const EdgeInsets.only(
            left: 20,
            top: 30,
          ),
          child: Row(
            children: [
              Icon(Icons.menu),
              Container(
                margin: const EdgeInsets.only(left: 60, right: 60),
                child: AppLargeText(
                  text: "Collections",
                  color: Colors.red,
                  size: 30,
                ),
              ),
              Icon(Icons.search)
            ],
          )
      ),
              Container(
                padding: const EdgeInsets.only(left: 20),
                height: 400,
                width: double.maxFinite,
                child: ListView.builder(
                    itemCount: 3,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        margin: const EdgeInsets.only(right: 15, top: 10),
                        child: Stack(
                          children: [
                            Positioned(
                              width: 250,
                              height: 150,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.grey.withOpacity(0.5),
                                  borderRadius: BorderRadius.circular(20)
                                ),
                              ),
                            ),
                            Positioned(
                                height:300,
                                width: 150,
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.grey..withOpacity(0.2),
                                  ),
                                  child: Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Row(
                                      children: [
                                        Container(
                                          width: 5,
                                          height: 5,
                                          decoration: BoxDecoration(
                                            color: Colors.red,
                                            shape: BoxShape.circle
                                          ),
                                        ),
                                        Container(
                                          width: 5,
                                          height: 5,
                                          decoration: BoxDecoration(
                                              color: Colors.grey,
                                              shape: BoxShape.circle
                                          ),
                                        ),
                                        Container(
                                          width: 5,
                                          height: 5,
                                          decoration: BoxDecoration(
                                              color: Colors.grey,
                                              shape: BoxShape.circle
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                            ),
                            Align(
                              alignment: Alignment(0.7, -0.3),
                              child: Positioned(
                                  child: Column(
                                    children: [
                                      AppLargeText(color: Colors.red, text: "Women", size: 30),
                                      const SizedBox(height: 10,),
                                      AppText(text: "Up to 20% off", color: Colors.black26,)
                                    ],
                                  )
                              ),
                            )
                          ]
                        ),
                      );
                    }
                ),
              ),
              Row(
                children: [
                  Container(),
                  Expanded(child: Container()),
                  Container(
                    height: 60,
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(20), bottomLeft: Radius.circular(20))
                    ),
                    child: Row(
                      children: [
                        AppText(text: "Next", color: Colors.white,),
                        Icon(Icons.arrow_forward_sharp, color: Colors.white,)
                      ],
                    ),
                  )
                ]
              ),
            ]
        )
    );
  }
}
