import 'package:flutter/material.dart';

import '../widgets/app_text.dart';

class WelcomePage3 extends StatelessWidget {
  const WelcomePage3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black87,
        body: Container(
          margin: EdgeInsets.only(
            top: MediaQuery.of(context).size.height / 9.2,
          ),
          child: Column(children: [
            Container(
                margin: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width / 3.6,
                    right: MediaQuery.of(context).size.width / 3.6),
                child: Container(
                  height: MediaQuery.of(context).size.height / 14.6,
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text("SuperStore",
                              style: TextStyle(
                                  fontSize:
                                      MediaQuery.of(context).size.width / 12,
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
                        width: MediaQuery.of(context).size.height / 36,
                        thickness: MediaQuery.of(context).size.width / 180,
                        color: Colors.white,
                      )
                    ],
                  ),
                )),
            SizedBox(
              height: MediaQuery.of(context).size.height/3.6,
            ),
            Container(
              margin: EdgeInsets.only(left: MediaQuery.of(context).size.width/4.5, right: MediaQuery.of(context).size.width/4.5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  AppText(
                    text: "Welcome",
                    color: Colors.white,
                    size: MediaQuery.of(context).size.height/29.3,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height/73,
                  ),
                  AppText(
                    text: "SIGN UP TO GET STARTED",
                    color: Colors.white.withOpacity(0.6),
                  ),
                ],
              ),
            ),
            Expanded(child: Container()),
            Container(
              margin: EdgeInsets.only(left: MediaQuery.of(context).size.width/18, right: MediaQuery.of(context).size.width/18, bottom: MediaQuery.of(context).size.height/73),
              width: double.maxFinite,
              height: MediaQuery.of(context).size.height/14.6,
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height/146.6,
                      width: MediaQuery.of(context).size.width/72,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: Colors.white),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height/18.3,
                      width: MediaQuery.of(context).size.width/4.5,
                      decoration: const BoxDecoration(
                          shape: BoxShape.rectangle, color: Colors.red),
                      child: const Center(
                          child: Text(
                        "Next",
                        style: TextStyle(color: Colors.white),
                      )),
                    )
                  ],
                ),
              ),
            )
          ]),
        ));
  }
}
