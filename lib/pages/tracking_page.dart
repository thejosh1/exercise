import 'package:exercise/widgets/app_text.dart';
import 'package:flutter/material.dart';

import '../widgets/app_large_text.dart';

class TrackingPage extends StatefulWidget {
  TrackingPage({Key? key}) : super(key: key);

  @override
  State<TrackingPage> createState() => _TrackingPageState();
}

class _TrackingPageState extends State<TrackingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(left: 30, top: 50, right: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Icon(Icons.menu),
                AppLargeText(color: Colors.red, text: "Tracking Order", size: 30),
                const Icon(Icons.search)
              ],
            ),
            const SizedBox(height: 30,),
            Center(
              child: AppLargeText(color: Colors.black, text: "Order No. #123-456", size: 30),
            ),
            const SizedBox(height: 10,),
            Container(
              height: 450,
              width: double.maxFinite,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:  [
                  Column(
                    children: [
                      AppText(text: "20/18", color: Colors.grey, size: 10,),
                      AppText(text: "10:00 am", color: Colors.grey, size: 10,),
                      const SizedBox(height: 60,),
                      AppText(text: "20/18", color: Colors.grey, size: 10,),
                      AppText(text: "10:00 am", color: Colors.grey, size: 10,),
                      const SizedBox(height: 60,),
                      AppText(text: "20/18", color: Colors.grey, size: 10,),
                      AppText(text: "10:00 am", color: Colors.grey, size: 10,),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.grey.withOpacity(0.8),
                          ),
                          color: Colors.white
                        ),
                        child: Center(
                          child: Container(
                            height: 15,
                            width: 15,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.red
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 50,
                        child: const VerticalDivider(
                          width: 20,
                          thickness: 1.5,
                          color: Colors.red,
                        )
                      ),
                      Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.grey.withOpacity(0.8),
                          ),
                          color: Colors.white
                        ),
                        child: Center(
                          child: Container(
                            height: 15,
                            width: 15,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.red
                            ),
                          ),
                        ),
                      ),
                       Container(
                        height: 50,
                        child: const VerticalDivider(
                          width: 20,
                          thickness: 1.5,
                          color: Colors.red,
                        )
                      ),
                      Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.grey.withOpacity(0.8),
                          ),
                          color: Colors.white
                        ),
                        child: Center(
                          child: Container(
                            height: 15,
                            width: 15,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.red
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 60,
                        child: VerticalDivider(
                          width: 20,
                          thickness: 1.5,
                          color: Colors.grey.withOpacity(0.6),
                        ),
                      ),
                      Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.grey.withOpacity(0.6),
                          ),
                          color: Colors.white
                        ),
                      ),
                      Container(
                        height: 60,
                        child: VerticalDivider(
                          width: 20,
                          thickness: 1.5,
                          color: Colors.grey.withOpacity(0.6),
                        ),
                      ),
                      Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.grey.withOpacity(0.6),
                          ),
                          color: Colors.white
                        ),
                      ),
                    ],
                  ),
                  Container(
                    child: Column(
                      children: [
                        AppText(text: "Order Signed"),
                        const SizedBox(height: 3,),
                        AppText(text: "Melbourne Store", color: Colors.grey.withOpacity(0.6),),
                        const SizedBox(height: 50,),
                        AppText(text: "Order Processed"),
                        const SizedBox(height: 3,),
                        AppText(text: "Melbourne Store", color: Colors.grey.withOpacity(0.6),),
                        const SizedBox(height: 50,),
                         AppText(text: "Shipped"),
                        const SizedBox(height: 3,),
                        AppText(text: "Melbourne Store", color: Colors.grey.withOpacity(0.6),),
                        const SizedBox(height: 50,),
                         AppText(text: "Out for delivery"),
                        const SizedBox(height: 3,),
                        AppText(text: "Sydney AU", color: Colors.grey.withOpacity(0.6),),
                        const SizedBox(height: 50,),
                         AppText(text: "Delivered"),
                        const SizedBox(height: 3,),
                        AppText(text: "NSW, Sydney AU", color: Colors.grey.withOpacity(0.6),),
                        const SizedBox(height: 30,),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: 300,
              height: 50,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: Colors.red
              ),
              child: Center(
                child: AppText(text: "Continue Shopping", color: Colors.white.withOpacity(0.8),),
              )
            ),
          ]
        ),
      ),
    );
  }
}