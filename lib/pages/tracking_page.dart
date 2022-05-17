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
        margin: EdgeInsets.only(left: MediaQuery.of(context).size.width/12, top: MediaQuery.of(context).size.height/14.6, right: MediaQuery.of(context).size.width/12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Icon(Icons.menu),
                AppLargeText(color: Colors.red, text: "Tracking Order", size: MediaQuery.of(context).size.width/12),
                const Icon(Icons.search)
              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height/24.4,),
            Center(
              child: AppLargeText(color: Colors.black, text: "Order No. #123-456", size: 30),
            ),
            SizedBox(height: MediaQuery.of(context).size.height/73,),
            Container(
              height: MediaQuery.of(context).size.height/1.63,
              width: double.maxFinite,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:  [
                  Column(
                    children: [
                      AppText(text: "20/18", color: Colors.grey, size: MediaQuery.of(context).size.height/73,),
                      AppText(text: "10:00 am", color: Colors.grey, size: MediaQuery.of(context).size.height/73,),
                      SizedBox(height: MediaQuery.of(context).size.height/12.2,),
                      AppText(text: "20/18", color: Colors.grey, size: MediaQuery.of(context).size.height/73,),
                      AppText(text: "10:00 am", color: Colors.grey, size: MediaQuery.of(context).size.height/73,),
                      SizedBox(height: MediaQuery.of(context).size.height/12.2,),
                      AppText(text: "20/18", color: Colors.grey, size: MediaQuery.of(context).size.height/73,),
                      AppText(text: "10:00 am", color: Colors.grey, size: MediaQuery.of(context).size.height/73,),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height/24.4,
                        width: MediaQuery.of(context).size.width/12,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.grey.withOpacity(0.8),
                          ),
                          color: Colors.white
                        ),
                        child: Center(
                          child: Container(
                            height: MediaQuery.of(context).size.height/48.8,
                            width: MediaQuery.of(context).size.width/24,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.red
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height/14.6,
                        child: VerticalDivider(
                          width: MediaQuery.of(context).size.height/36.7,
                          thickness: MediaQuery.of(context).size.width/240,
                          color: Colors.red,
                        )
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height/24.4,
                        width: MediaQuery.of(context).size.width/12,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.grey.withOpacity(0.8),
                          ),
                          color: Colors.white
                        ),
                        child: Center(
                          child: Container(
                            height: MediaQuery.of(context).size.height/48.9,
                            width: MediaQuery.of(context).size.width/24,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.red
                            ),
                          ),
                        ),
                      ),
                       Container(
                        height: MediaQuery.of(context).size.height/14.6,
                        child:  VerticalDivider(
                          width: MediaQuery.of(context).size.height/36.65,
                          thickness: MediaQuery.of(context).size.width/240,
                          color: Colors.red,
                        )
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height/24.4,
                        width: MediaQuery.of(context).size.width/12,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.grey.withOpacity(0.8),
                          ),
                          color: Colors.white
                        ),
                        child: Center(
                          child: Container(
                            height: MediaQuery.of(context).size.height/48.9,
                            width: MediaQuery.of(context).size.width/24,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.red
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height/12.2,
                        child: VerticalDivider(
                          width: MediaQuery.of(context).size.height/36.65,
                          thickness: MediaQuery.of(context).size.width/240,
                          color: Colors.grey.withOpacity(0.6),
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height/24.4,
                        width: MediaQuery.of(context).size.width/12,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.grey.withOpacity(0.6),
                          ),
                          color: Colors.white
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height/12.2,
                        child: VerticalDivider(
                          width: MediaQuery.of(context).size.height/36.65,
                          thickness: MediaQuery.of(context).size.width/240,
                          color: Colors.grey.withOpacity(0.6),
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height/24.4,
                        width: MediaQuery.of(context).size.height/12,
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
                        SizedBox(height: MediaQuery.of(context).size.height/244.3,),
                        AppText(text: "Melbourne Store", color: Colors.grey.withOpacity(0.6),),
                        SizedBox(height: MediaQuery.of(context).size.height/14.6,),
                        AppText(text: "Order Processed"),
                        SizedBox(height: MediaQuery.of(context).size.height/244.3,),
                        AppText(text: "Melbourne Store", color: Colors.grey.withOpacity(0.6),),
                        SizedBox(height: MediaQuery.of(context).size.height/14.6,),
                        AppText(text: "Shipped"),
                        SizedBox(height: MediaQuery.of(context).size.height/244.3,),
                        AppText(text: "Melbourne Store", color: Colors.grey.withOpacity(0.6),),
                        SizedBox(height: MediaQuery.of(context).size.height/14.6,),
                        AppText(text: "Out for delivery"),
                        SizedBox(height: MediaQuery.of(context).size.height/244.3,),
                        AppText(text: "Sydney AU", color: Colors.grey.withOpacity(0.6),),
                        SizedBox(height: MediaQuery.of(context).size.height/14.6,),
                         AppText(text: "Delivered"),
                        SizedBox(height: MediaQuery.of(context).size.height/244.3,),
                        AppText(text: "NSW, Sydney AU", color: Colors.grey.withOpacity(0.6),),
                        SizedBox(height: MediaQuery.of(context).size.height/24.4,),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width/1.2,
              height: MediaQuery.of(context).size.height/14.6,
              decoration: const BoxDecoration(
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