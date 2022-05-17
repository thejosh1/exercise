import 'package:exercise/widgets/app_large_text.dart';
import 'package:exercise/widgets/app_text.dart';

import 'package:flutter/material.dart';

class CollectionsPage extends StatefulWidget {
  const CollectionsPage({Key? key}) : super(key: key);

  @override
  State<CollectionsPage> createState() => _CollectionsPageState();
}

class _CollectionsPageState extends State<CollectionsPage> {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: Column(
        children: [
          Container(
              margin: EdgeInsets.only(left: MediaQuery.of(context).size.width/18, top: MediaQuery.of(context).size.height/12.2,),
              child: Row(
                children: [
                  const Icon(Icons.menu),
                  Container(
                    margin: EdgeInsets.only(left: MediaQuery.of(context).size.width/6, right: MediaQuery.of(context).size.width/6),
                    child: AppLargeText(text: "Collections", color: Colors.red, size: MediaQuery.of(context).size.width/12,),
                  ),
                  const Icon(Icons.search)
                ],
              )

          ),
          Container(
            margin: EdgeInsets.only(top: MediaQuery.of(context).size.height/24.4),
            height: MediaQuery.of(context).size.height/2.4,
            width: MediaQuery.of(context).size.width/1.2,
            child: Center(
              child: Stack(
                children: [
                  Positioned(
                    height: MediaQuery.of(context).size.height/2.6,
                    width: MediaQuery.of(context).size.width/1.8,
                    left: MediaQuery.of(context).size.width/6,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(MediaQuery.of(context).size.height/36.65)
                      ),
                    ),
                  ),
                  Positioned(
                      height: MediaQuery.of(context).size.height/2.7,
                      width: MediaQuery.of(context).size.height/1.6,
                      left: MediaQuery.of(context).size.width/9,
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(MediaQuery.of(context).size.height/36.65)
                        ),
                      )
                  ),
                  Positioned(
                      left: MediaQuery.of(context).size.width/18,
                      height: MediaQuery.of(context).size.height/2.9,
                      width: MediaQuery.of(context).size.height/1.3,
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(MediaQuery.of(context).size.height/36.65)
                        ),
                      )
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height/73,),
          Center(
            child: AppLargeText(text: "Women", color: Colors.black, size: MediaQuery.of(context).size.width/12,),
          ),
          SizedBox(height: MediaQuery.of(context).size.height/48.9,),
          Center(
            child: SizedBox(
              width: MediaQuery.of(context).size.width/1.4,
              child: AppText(text: "Believe In Yourself, take on your challenges, dig within yourself to conquer Your fears",),
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height/73,),
          Row(
            children: [
              Container(
                padding: EdgeInsets.only(left: MediaQuery.of(context).size.width/36),
                child: Container(
                  height: MediaQuery.of(context).size.height/73,
                  width: MediaQuery.of(context).size.width/36,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle
                  ),
                ),
              ),
              Expanded(child: Container()),
              Container(
                margin: EdgeInsets.only(right: MediaQuery.of(context).size.width/12),
                child: Row(
                    children:[
                      Container(
                        height: MediaQuery.of(context).size.height/14.6,
                        width: MediaQuery.of(context).size.width/7.2,
                        decoration: const BoxDecoration(
                            color: Colors.grey,
                            shape: BoxShape.circle
                        ),
                        child: const Icon(Icons.arrow_back, color: Colors.white,),
                      ),
                      SizedBox(width: MediaQuery.of(context).size.width/36,),
                      Container(
                        height: MediaQuery.of(context).size.height/14.6,
                        width: MediaQuery.of(context).size.width/7.2,
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

