import 'package:exercise/nav_pages/home_page.dart';
import 'package:exercise/nav_pages/my_page.dart';
import 'package:exercise/nav_pages/settings.dart';
import 'package:exercise/nav_pages/shop_page.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  var pages = [
    HomePage(),
    MyPage(),
    Settings(),
    ShopPage()
  ];
  int currentIndex = 0;
  void OnTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: pages[currentIndex],
        backgroundColor: Colors.white,
        bottomNavigationBar: Container(
          height: 60,
          decoration: const BoxDecoration(
            color: Colors.white,
            //border: Border(top: BorderSide(color: Colors.red),),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20)
            )
          ),
          child: Container(
            decoration: BoxDecoration(
              border: Border(top: BorderSide(color: Colors.red))
            ),
            child: BottomNavigationBar(
              onTap: OnTap,
              currentIndex: currentIndex,
              showSelectedLabels: true,
              showUnselectedLabels: false,
              //selectedFontSize: 0,
              //unselectedFontSize: 0,
              selectedItemColor: Colors.red,
              unselectedItemColor: Colors.grey.withOpacity(0.5),
              items: [
                BottomNavigationBarItem(icon: Icon(Icons.home_outlined,), label: "Home"),
                BottomNavigationBarItem(icon: Icon(Icons.shop_2_outlined,), label:"Shop"),
                BottomNavigationBarItem(icon: Icon(Icons.person_outlined,), label:"MyPage"),
                BottomNavigationBarItem(icon: Icon(Icons.settings_outlined,), label:"settings")
              ],
            ),
          ),
        ),
      );
  }
}
