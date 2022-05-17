import 'package:exercise/pages/main_page.dart';
import 'package:exercise/pages/product_after_page.dart';
import 'package:exercise/pages/product_before_page.dart';
import 'package:exercise/pages/tracking_page.dart';
import 'package:exercise/pages/welcome_page2.dart';
import 'package:exercise/pages/welcome_page3.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        primarySwatch: Colors.red,
      ),
      home: Scaffold(
          extendBody: true,
          body: ProductBeforePage()
      ),
    );
  }
}