import 'package:exercise/widgets/app_large_text.dart';
import 'package:exercise/widgets/app_text.dart';
import 'package:exercise/widgets/responsive_button.dart';
import 'package:flutter/material.dart';

class ProductAfterPage extends StatefulWidget {
  const ProductAfterPage({Key? key}) : super(key: key);

  @override
  State<ProductAfterPage> createState() => _ProductAfterPageState();
}

class _ProductAfterPageState extends State<ProductAfterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(MediaQuery.of(context).size.height/36.65), bottomRight: Radius.circular(MediaQuery.of(context).size.height/36.65))
        ),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(
                left: MediaQuery.of(context).size.width/18, 
                top: MediaQuery.of(context).size.height/24.4, 
                right: MediaQuery.of(context).size.width/18),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.menu,
                        color: Colors.white,
                      )),
                  Container(
                    padding: EdgeInsets.only(left: MediaQuery.of(context).size.width/5.14, 
                    right: MediaQuery.of(context).size.width/5.54),
                    child: AppLargeText(
                      text: "Women",
                      size: MediaQuery.of(context).size.height/24.4,
                      color: Colors.white,
                    ),
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.favorite_outline_sharp,
                        color: Colors.white,
                      ))
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height/14.6,
            ),
            Container(
              margin: EdgeInsets.only(
                left: MediaQuery.of(context).size.width/18,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppLargeText(color: Colors.white, text: "Lady Hat", size: MediaQuery.of(context).size.height/29.3),
                  SizedBox(
                    height: MediaQuery.of(context).size.height/14.6,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width/1.8,
                    child: AppText(
                      text:
                          "I would Hope that I would not have a single bit of talent left",
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height/24.4,
                  ),
                  const Text(
                    "\$45",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height/36.65,
                  ),
                  Row(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width/12,
                        height: MediaQuery.of(context).size.height/24.4,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white),
                            color: Colors.red,
                            shape: BoxShape.circle),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width/36,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.height/12,
                        height: MediaQuery.of(context).size.height/24.4,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white),
                            color: Colors.yellow,
                            shape: BoxShape.circle),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.height/12,
                        height: MediaQuery.of(context).size.height/24.4,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white),
                            color: Colors.blue,
                            shape: BoxShape.circle),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height/36.65,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height/7.3,
                    width: MediaQuery.of(context).size.height/1.8,
                    color: Colors.transparent,
                    child: Row(
                      children: [
                        Column(
                            children: [
                              Row(
                                children: [
                                  Column(
                                    children: [
                                      AppText(
                                        text: "Buy Now",
                                        color: Colors.white,
                                      ),
                                      SizedBox(height: MediaQuery.of(context).size.height/146.7,),
                                      Container(
                                        width: MediaQuery.of(context).size.width/3.6,
                                        child: const Divider(
                                          color: Colors.white,
                                        ),
                                      )
                                    ]
                                  ),
                                  SizedBox(width: MediaQuery.of(context).size.width/36,),
                                  Container(
                                    height: MediaQuery.of(context).size.height/24.4,
                                    width: MediaQuery.of(context).size.width/12,
                                    decoration: const BoxDecoration(
                                        color: Colors.white,
                                        shape: BoxShape.circle
                                    ),
                                    child: const Icon(Icons.shopping_bag, color: Colors.red,),
                                  )
                                ]
                              ),
                              SizedBox(height: MediaQuery.of(context).size.height/73,),
                              const Divider(
                              color: Colors.white,
                              )
                            ]
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height/69,
                  ),
                  Container(
                    margin:  EdgeInsets.only(left: MediaQuery.of(context).size.width/18, right: MediaQuery.of(context).size.width/18),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height/73,
                          width: MediaQuery.of(context).size.width/36,
                          decoration: const BoxDecoration(
                              color: Colors.white, shape: BoxShape.circle),
                        ),
                        ResponsiveButton(width: MediaQuery.of(context).size.width/3.6,),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
