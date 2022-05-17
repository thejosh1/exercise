import 'package:flutter/material.dart';

import '../widgets/app_text.dart';

class WelcomePage3 extends StatelessWidget {
  const WelcomePage3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: Container(
        margin: EdgeInsets.only(top: MediaQuery.of(context).size.height/9.2,),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(left: MediaQuery.of(context).size.width/3.6, right: MediaQuery.of(context).size.width/3.6),
              child: Container(
                height: MediaQuery.of(context).size.height/,
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Text("SuperStore", style: TextStyle(fontSize: 30, color: Colors.white, fontStyle: FontStyle.italic,)),
                        AppText(text: "Fashion", color: Colors.white,)
                      ],
                    ),
                    const VerticalDivider(
                      width: 10,
                      thickness: 2,
                      color: Colors.white,
                    )
                  ],
                ),
              )
            ),
            const SizedBox(height: 200,),
            Container(
              margin: const EdgeInsets.only(left: 80, right: 80),    
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  AppText(text: "Welcome", color: Colors.white, size: 25,),
                  const SizedBox(height: 10,),
                  AppText(text: "SIGN UP TO GET STARTED", color: Colors.white.withOpacity(0.6),),
                ],  
              ),
            ),
            Expanded(child: Container()),
            Container(
              margin: const EdgeInsets.only(left: 20, right:20, bottom: 10),
              width: double.maxFinite,
              height: 50,
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 5,
                      width: 5,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white
                      ),
                    ),
                    Container(
                      height: 40,
                      width: 80,
                      decoration: const BoxDecoration(
                        shape: BoxShape.rectangle,
                        color: Colors.red
                      ),
                      child: const Center(
                        child: Text("Next", style: TextStyle(color: Colors.white),)
                      ),
                    )
                  ],
                ),
              ),
            )
          ]
        ),
      )
    );
  }
}
