import 'package:flutter/material.dart';

class AppBarDemoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Text("AppBarDemoPage"),
//        backgroundColor: Colors.red,//指定APP bar的背景颜色
//            leading: IconButton(
//                icon: Icon(Icons.menu),
//                onPressed: () {
//                  print("menu pressed...");
//                }
//            ),
//            actions: <Widget>[
//              IconButton(
//                  icon: Icon(Icons.search),
//                  onPressed: () {
//                    print("search pressed...");
//                  }
//              ),
//              IconButton(
//                  icon: Icon(Icons.save),
//                  onPressed: () {
//                    print("save pressed...");
//                  }
//              ),
//              IconButton(
//                  icon: Icon(Icons.settings),
//                  onPressed: () {
//                    print("settings pressed...");
//                  }
//              ),
//            ],
            bottom:TabBar(
              tabs: <Widget>[
                Tab(
                  text: "热门",
                ),
                Tab(
                  text: "推荐",
                ),
              ],
            ),
          ),
          body: TabBarView(
              children: <Widget>[
                ListView(
                  children: <Widget>[
                    ListTile(
                      title: Text("tab1"),
                    ),
                    ListTile(
                      title: Text("tab1"),
                    ),
                    ListTile(
                      title: Text("tab1"),
                    ),
                  ],
                ),
                ListView(
                  children: <Widget>[
                    ListTile(
                      title: Text("tab2"),
                    ),
                    ListTile(
                      title: Text("tab2"),
                    ),
                    ListTile(
                      title: Text("tab2"),
                    ),
                  ],
                ),
              ],
          ),
        )
    );
  }
}
