import 'package:exercise/widgets/app_large_text.dart';
import 'package:exercise/widgets/app_text.dart';
import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  CartPage({Key? key}) : super(key: key);

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
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
              AppLargeText(color: Colors.red, text: "Shopping Cart", size: 30),
              const Icon(Icons.search)
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            children: [
              Container(
                height: 100,
                width: 100,
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.black)),
              ),
              const SizedBox(
                width: 15,
              ),
              Container(
                height: 100,
                width: 130,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppText(text: "White Dress"),
                    const SizedBox(
                      height: 5,
                    ),
                    AppText(
                      text: "Women",
                      size: 10,
                      color: Colors.black.withOpacity(0.5),
                    ),
                    Expanded(child: Container()),
                    Row(
                      children: [
                        Container(
                            height: 25,
                            width: 25,
                            color: Colors.grey,
                            child: const Center(
                              child: Text("+"),
                            )),
                        Container(
                          height: 25,
                          width: 25,
                          color: Colors.grey,
                          child: const Center(
                            child: Text("1"),
                          ),
                        ),
                        Container(
                          height: 25,
                          width: 25,
                          color: Colors.grey,
                          child: const Center(
                            child: Text("-"),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              Container(
                height: 100,
                width: 50,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    AppText(
                      text: "\$15",
                      color: Colors.red,
                    ),
                    Expanded(child: Container()),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: const BoxDecoration(color: Colors.deepOrange),
                      child: const Center(
                        child: Icon(
                          Icons.delete_rounded,
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          const SizedBox(height: 30,),
          Row(
            children: [
              Container(
                height: 100,
                width: 100,
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.black)),
              ),
              const SizedBox(
                width: 15,
              ),
              Container(
                height: 100,
                width: 130,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppText(text: "Red Dress"),
                    const SizedBox(
                      height: 5,
                    ),
                    AppText(
                      text: "Women",
                      size: 10,
                      color: Colors.black.withOpacity(0.5),
                    ),
                    Expanded(child: Container()),
                    Row(
                      children: [
                        Container(
                            height: 25,
                            width: 25,
                            color: Colors.grey,
                            child: const Center(
                              child: Text("+"),
                            )),
                        Container(
                          height: 25,
                          width: 25,
                          color: Colors.grey,
                          child: const Center(
                            child: Text("1"),
                          ),
                        ),
                        Container(
                          height: 25,
                          width: 25,
                          color: Colors.grey,
                          child: const Center(
                            child: Text("-"),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              Container(
                height: 100,
                width: 50,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    AppText(
                      text: "\$15",
                      color: Colors.red,
                    ),
                    Expanded(child: Container()),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: const BoxDecoration(color: Colors.deepOrange),
                      child: const Center(
                        child: Icon(
                          Icons.delete_rounded,
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          const SizedBox(height: 40,),
          AppLargeText(color: Colors.black, text: "TOTAL", size: 30),
          const SizedBox(height: 30,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AppText(text: "SubTotal", size: 20,),
              //Divider(color: Colors.black.withOpacity(0.8), thickness: 3, height: 20,),
              AppLargeText(color: Colors.black, text: "\$30.00", size: 20),
            ],
          ),
          const SizedBox(height: 30,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AppText(text: "Shipping", size: 20,),
              AppLargeText(color: Colors.black, text: "\$0", size: 20)
            ],
          ),
          const SizedBox(height: 20,),
          Container(
            height: 50,
            width: 300,
            decoration: BoxDecoration(
              border: Border(top: BorderSide(color: Colors.grey.withOpacity(0.8)) , 
              bottom: BorderSide(color: Colors.grey.withOpacity(0.8)), 
              right: BorderSide(color: Colors.grey.withOpacity(0.8)), left: BorderSide(color: Colors.grey.withOpacity(0.8)))
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 15),
                  child: AppText(color: Colors.grey.withOpacity(0.5), text: "Enter Voucher Code", size: 20),
                ),
                Container(
                  margin: const EdgeInsets.only(right: 15),
                  child: AppText(text: "Apply", size: 20,),
                )
              ],
            )
          ),
          const SizedBox(height: 15,),
          Center(
            child:  Container(
              height: 40,
              width: 100,
              color: Colors.red,
              child: Center(
                child: AppText(text: "CHECKOUT", color: Colors.white.withOpacity(0.6),),
              )
            ),
          ),
        ],
      ),
    ));
  }
}
