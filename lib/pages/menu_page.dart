import 'package:flutter/material.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(20),
              bottomRight: Radius.circular(20)
            )
          ),
          child: ListView(
            children: [
              DrawerHeader(child: null,),
              ListTile(),
              ListTile(),
              ListTile()
            ],
          ),
        ),
      ),
    );
  }
}
