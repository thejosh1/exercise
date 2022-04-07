import 'package:exercise/widgets/app_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/app_large_text.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 4, vsync: this);
    return Scaffold(
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(left:20, top:40, right:30),
            //height: double.maxFinite,
            //width: double.maxFinite,
            child: Row(
              children: [
                Icon(Icons.menu),
                Container(
                  margin: const EdgeInsets.only(left: 60, right: 60),
                  child: AppLargeText(text: 'Discover', size: 30, color: Colors.red,),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.search_outlined),
                    SizedBox(width: 10,),
                    Icon(Icons.filter)
                  ]
                )
              ],
            )
          ),
          const SizedBox(height: 10,),
          Container(
            margin: const EdgeInsets.only(left: 20, right: 20),
            child: TabBar(
              controller: _tabController,
              labelColor: Colors.black87,
              unselectedLabelColor: Colors.grey.withOpacity(0.8),
              indicatorColor: Colors.transparent,
              tabs: [
                Tab(text: "All",),
                Tab(text: "Women",),
                Tab(text: "Men",),
                Tab(text: "BestSellers",)
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.only(left: 20, right: 20),
              //height: 300,
              //width: double.maxFinite,
              child: TabBarView(
                controller: _tabController,
                children: [
                  Container(
                    // height: double.maxFinite,
                    // width: double.maxFinite,
                    child: ListView.builder(
                        itemCount: 4,
                        scrollDirection: Axis.vertical,
                        itemBuilder: (BuildContext context, int index){
                          return Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 150,
                                height: 300,
                                child: Column(
                                  children: [
                                    AppText(text: "White Dress"),
                                    const SizedBox(height: 10,),
                                    AppText(text: "\$15", color: Colors.red,),
                                    const SizedBox(height: 60,),
                                    Container(
                                      height: 50,
                                      width: 100,
                                      color: Colors.grey.withOpacity(0.5),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.end,
                                        children: [
                                          Icon(Icons.shopping_basket, color: Colors.red[800],),
                                          const SizedBox(height: 2,),
                                          Icon(Icons.favorite_outline)
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: 150,
                                height: 300,
                                child: Column(
                                  children: [
                                    AppText(text: "White Dress"),
                                    const SizedBox(height: 10,),
                                    AppText(text: "\$15", color: Colors.red,),
                                    const SizedBox(height: 60,),
                                    Container(
                                      height: 50,
                                      width: 100,
                                      color: Colors.grey.withOpacity(0.5),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.end,
                                        children: [
                                          Icon(Icons.shopping_basket, color: Colors.red[800],),
                                          const SizedBox(height: 2,),
                                          Icon(Icons.favorite_outline)
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          );
                        }),
                  ),
                  Text("hey"),
                  Text("hey"),
                  Text("hey")
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
