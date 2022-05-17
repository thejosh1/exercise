import 'package:exercise/widgets/app_large_text.dart';
import 'package:flutter/material.dart';

import '../widgets/app_text.dart';

class WelcomePage2 extends StatelessWidget {
  const WelcomePage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        margin: EdgeInsets.only(top: MediaQuery.of(context).size.height/9.2),
        child: Column(
          children: [
            Container(
                margin: EdgeInsets.only(left: MediaQuery.of(context).size.width/3.6, right: MediaQuery.of(context).size.width/3.6),
                child: Container(
                        height: MediaQuery.of(context).size.height/14.6,
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text("SuperStore",
                                  style: TextStyle(
                                    fontSize: MediaQuery.of(context).size.width/12,
                                    color: Colors.white,
                                    fontStyle: FontStyle.italic,
                                    fontWeight: FontWeight.bold)),
                                AppText(
                                  text: "Fashion",
                                  color: Colors.white,
                                )
                              ],
                            ),
                      VerticalDivider(
                        width: MediaQuery.of(context).size.height/36,
                        thickness: MediaQuery.of(context).size.width/180,
                        color: Colors.white,
                      )
                    ],
                  ),
                )),
            SizedBox(
              height: MediaQuery.of(context).size.height/3.6,
            ),
            Center(
              child: AppLargeText(
                text: "Welcome",
                color: Colors.white,
                size: MediaQuery.of(context).size.height/24.4,
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width/1.4,
              child: const Center(
                child: Text(
                  "Sign up to get started and experience\n great shopping deals",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Expanded(child: Container()),
            Container(
              margin: EdgeInsets.only(bottom: MediaQuery.of(context).size.height/36.6),
              height: MediaQuery.of(context).size.height/18.3,
              width: MediaQuery.of(context).size.width/1.2,
              decoration: const BoxDecoration(
                  shape: BoxShape.rectangle, color: Colors.red),
              child: const Center(
                  child: Text(
                "Continue",
                style: TextStyle(color: Colors.white),
              )),
            ),
            Container(
              margin: EdgeInsets.only(bottom: MediaQuery.of(context).size.height/36.65),
              child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AppText(text: "Already have an account?", color: Colors.white, size: MediaQuery.of(context).size.height/73,),
                  AppText(text: "Sign in", color: Colors.purple, size: MediaQuery.of(context).size.height/73,)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
