import 'package:flutter/material.dart';

class NavDrawer extends StatelessWidget {
  const NavDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: const EdgeInsets.all(0),
        children: [
          DrawerHeader(
            child:
            Text("Drawer Header", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
            decoration: BoxDecoration(
              color: Colors.red,
              
            ),
          ),
        ],
      ),
    );
  }
}
