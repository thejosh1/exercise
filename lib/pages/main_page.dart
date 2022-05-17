import 'package:exercise/pages/cart_page.dart';
import 'package:exercise/pages/home_page.dart';
import 'package:exercise/pages/collection_page.dart';
import 'package:exercise/pages/tracking_page.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  var pages = [
    const HomePage(),
    const CollectionsPage(),
    TrackingPage(),
    CartPage()
  ];
  int currentIndex = 0;
  // ignore: non_constant_identifier_names
  void OnTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      backgroundColor: const Color(0x00ffffff),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20)
        ),
        child: Container(
          decoration: const BoxDecoration(
              //border: Border(top: BorderSide(color: Colors.red))
          ),
          child: BottomNavigationBar(
            onTap: OnTap,
            currentIndex: currentIndex,
            showSelectedLabels: true,
            showUnselectedLabels: false,
            elevation: 0,
            selectedItemColor: Colors.red,
            unselectedItemColor: Colors.grey.withOpacity(0.5),
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home_outlined,), label: "Home"),
              BottomNavigationBarItem(icon: Icon(Icons.shop_2_outlined,), label:"Collections"),
              BottomNavigationBarItem(icon: Icon(Icons.person_outlined,), label:"Product"),
              BottomNavigationBarItem(icon: Icon(Icons.settings_outlined,), label:"Drag Animation")
            ],
          ),
        ),
      ),
    );
  }
}
