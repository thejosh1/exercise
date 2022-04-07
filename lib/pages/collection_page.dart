import 'package:exercise/widgets/app_large_text.dart';
import 'package:exercise/widgets/app_text.dart';
import 'package:exercise/widgets/responsive_circle.dart';
import 'package:flutter/material.dart';
class CollectionsPage extends StatefulWidget {
  const CollectionsPage({Key? key}) : super(key: key);

  @override
  State<CollectionsPage> createState() => _CollectionsPageState();
}

class _CollectionsPageState extends State<CollectionsPage> {
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
          Container(
            margin: const EdgeInsets.only(top: 30),
            height: 300,
            width: 300,
            child: Center(
              child: Stack(
                children: [
                  Positioned(
                    height: 280,
                    width: 200,
                    left: 60,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(20)
                      ),
                    ),
                  ),
                  Positioned(
                      height: 270,
                      width: 230,
                      left: 40,
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(20)
                        ),
                      )
                  ),
                  Positioned(
                      left: 20,
                      height: 250,
                      width: 270,
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(20)
                        ),
                      )
                  )
                ],
              ),
            ),
          ),
          const SizedBox(height: 10,),
          Center(
            child: AppLargeText(text: "Women", color: Colors.black, size: 30,),
          ),
          const SizedBox(height: 15,),
          Center(
            child: SizedBox(
              width: 250,
              child: AppText(text: "Believe In Yourself, take on your challenges, dig within yourself to conquer Your fears",),
            ),
          ),
          const SizedBox(height: 10,),
          Row(
            children: [
              Container(
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

