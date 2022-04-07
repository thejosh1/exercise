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
            height: 300,
            width: 300,
            child: Stack(
              children: [
                Positioned(
                  height: 300,
                  width: 150,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.2)
                    ),
                  ),
                ),
                Positioned(
                    height: 270,
                    width: 170,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.5)
                      ),
                    )
                ),
                Positioned(
                    height: 250,
                    width: 300,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.grey
                      ),
                    )
                )
              ],
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
                child: ResponsiveCircle(width: 20, height: 20,),
              ),
              Expanded(child: Container()),
              Container(
                child: ResponsiveCircle(width: 40, height: 40, color: onTap(),),
              ),
              Container(
                child: ResponsiveCircle(width: 40, height: 40, color: onTap(),),
              ),
            ],
          )
        ],
      ),
    );
  }
}

