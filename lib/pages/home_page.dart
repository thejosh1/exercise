import 'package:exercise/widgets/app_text.dart';
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
            margin: EdgeInsets.only(
              left:MediaQuery.of(context).size.width/18, 
              top: MediaQuery.of(context).size.height/18.3, 
              right:MediaQuery.of(context).size.width/36),
            child: Row(
              children: [
                const Icon(Icons.menu),
                Container(
                  margin: EdgeInsets.only(left: MediaQuery.of(context).size.width/6, right: MediaQuery.of(context).size.width/6),
                  child: AppLargeText(text: 'Discover', size: MediaQuery.of(context).size.height/24.4, color: Colors.red,),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Icon(Icons.search_outlined),
                    SizedBox(width: MediaQuery.of(context).size.width/36,),
                    const Icon(Icons.filter)
                  ]
                )
              ],
            )
          ),
          SizedBox(height: MediaQuery.of(context).size.height/73,),
          Container(
            child: TabBar(
              controller: _tabController,
              labelColor: Colors.black87,
              unselectedLabelColor: Colors.grey.withOpacity(0.8),
              indicatorColor: Colors.transparent,
              tabs: const [
                Tab(text: "All",),
                Tab(text: "Women",),
                Tab(text: "Men",),
                Tab(text: "BestSellers",)
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.only(left: MediaQuery.of(context).size.width/18, right: MediaQuery.of(context).size.width/18),
              child: TabBarView(
                controller: _tabController,
                children: [
                  SizedBox(
                    height:MediaQuery.of(context).size.height/3.7,
                    width: MediaQuery.of(context).size.width/1.8,
                    child: ListView.builder(
                        itemCount: 4,
                        scrollDirection: Axis.vertical,
                        itemBuilder: (BuildContext context, int index){
                          return Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width: MediaQuery.of(context).size.width/2.4,
                                height: MediaQuery.of(context).size.height/3.7,
                                child: Column(
                                  children: [
                                    AppText(text: "White Dress"),
                                    SizedBox(height: MediaQuery.of(context).size.height/73,),
                                    AppText(text: "\$15", color: Colors.red,),
                                    SizedBox(height: MediaQuery.of(context).size.height/12.2,),
                                    Container(
                                      height: MediaQuery.of(context).size.height/14,
                                      width: MediaQuery.of(context).size.width/3.6,
                                      color: Colors.grey.withOpacity(0.5),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.end,
                                        children: [
                                          Icon(Icons.shopping_basket, color: Colors.red[800],),
                                          SizedBox(height: MediaQuery.of(context).size.height/367,),
                                          const Icon(Icons.favorite_outline)
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width/2.4,
                                height: MediaQuery.of(context).size.height/3.7,
                                child: Column(
                                  children: [
                                    AppText(text: "Red Dress"),
                                    SizedBox(height: MediaQuery.of(context).size.height/73,),
                                    AppText(text: "\$15", color: Colors.red,),
                                    SizedBox(height: MediaQuery.of(context).size.height/12.2),
                                    Container(
                                      height: MediaQuery.of(context).size.height/14,
                                      width: MediaQuery.of(context).size.width/3.6,
                                      color: Colors.grey.withOpacity(0.5),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.end,
                                        children: [
                                          Icon(Icons.shopping_basket, color: Colors.red[800],),
                                          SizedBox(height: MediaQuery.of(context).size.height/367,),
                                          const Icon(Icons.favorite_outline)
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
                  const Text("hey"),
                  const Text("hey"),
                  const Text("hey")
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
