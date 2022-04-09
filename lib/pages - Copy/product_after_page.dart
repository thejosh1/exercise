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
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20))
        ),
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(left: 20, top: 30, right: 20),
              child: Row(
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.menu,
                        color: Colors.white,
                      )),
                  Container(
                    padding: const EdgeInsets.only(left: 70, right: 65),
                    child: AppLargeText(
                      text: "Women",
                      size: 30,
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
            const SizedBox(
              height: 50,
            ),
            Container(
              margin: const EdgeInsets.only(
                left: 20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppLargeText(color: Colors.white, text: "Lady Hat", size: 25),
                  const SizedBox(
                    height: 50,
                  ),
                  SizedBox(
                    width: 200,
                    child: AppText(
                      text:
                          "I would Hope that I would not have a single bit of talent left",
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    "\$45",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white),
                            color: Colors.red,
                            shape: BoxShape.circle),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white),
                            color: Colors.yellow,
                            shape: BoxShape.circle),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white),
                            color: Colors.blue,
                            shape: BoxShape.circle),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 100,
                    width: 200,
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
                                      SizedBox(height: 5,),
                                      Container(
                                        width: 100,
                                        child: const Divider(
                                          color: Colors.white,
                                        ),
                                      )
                                    ]
                                  ),
                                  SizedBox(width: 10,),
                                  Container(
                                    height: 30,
                                    width: 30,
                                    decoration: const BoxDecoration(
                                        color: Colors.white,
                                        shape: BoxShape.circle
                                    ),
                                    child: const Icon(Icons.shopping_bag, color: Colors.red,),
                                  )
                                ]
                              ),
                              const SizedBox(height: 10,),
                              const Divider(
                              color: Colors.white,
                              )
                            ]
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 70,
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 20, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 10,
                          width: 10,
                          decoration: const BoxDecoration(
                              color: Colors.white, shape: BoxShape.circle),
                        ),
                        ResponsiveButton(width: 100,),
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
