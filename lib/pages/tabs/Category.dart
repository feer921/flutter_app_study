import 'package:flutter/material.dart';

class CategoryPage extends StatefulWidget {
  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 8,
        child: Scaffold(
          appBar: AppBar(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Expanded(
                  child:TabBar(
                    isScrollable: true,
                    indicatorSize: TabBarIndicatorSize.label,
                    tabs: <Widget>[
                      Tab(
                        text: "热销",
                      ),
                      Tab(
                        text: "推荐",
                      ),
                      Tab(
                        text: "郁闷",
                      ),
                      Tab(
                        text: "天啊",
                      ),
                      Tab(
                        text: "哦哦在",
                      ),
                      Tab(
                        text: "森木要",
                      ),
                      Tab(
                        text: "无奇不有",
                      ),
                      Tab(
                        text: "腹胀有",
                      ),
                    ],
                  ) ,
                )

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
              ListView(
                children: <Widget>[
                  ListTile(
                    title: Text("tab3"),
                  ),
                  ListTile(
                    title: Text("tab3"),
                  ),
                  ListTile(
                    title: Text("tab3"),
                  ),
                ],
              ),
              ListView(
                children: <Widget>[
                  ListTile(
                    title: Text("tab4"),
                  ),
                  ListTile(
                    title: Text("tab4"),
                  ),
                  ListTile(
                    title: Text("tab4"),
                  ),
                ],
              ),
              ListView(
                children: <Widget>[
                  ListTile(
                    title: Text("tab5"),
                  ),
                  ListTile(
                    title: Text("tab5"),
                  ),
                  ListTile(
                    title: Text("tab5"),
                  ),
                ],
              ),
              ListView(
                children: <Widget>[
                  ListTile(
                    title: Text("tab6"),
                  ),
                  ListTile(
                    title: Text("tab6"),
                  ),
                  ListTile(
                    title: Text("tab6"),
                  ),
                ],
              ),
              ListView(
                children: <Widget>[
                  ListTile(
                    title: Text("tab7"),
                  ),
                  ListTile(
                    title: Text("tab7"),
                  ),
                  ListTile(
                    title: Text("tab7"),
                  ),
                ],
              ),
              ListView(
                children: <Widget>[
                  ListTile(
                    title: Text("tab8"),
                  ),
                  ListTile(
                    title: Text("tab8"),
                  ),
                  ListTile(
                    title: Text("tab8"),
                  ),
                ],
              ),
            ],
          ),
        )
    );
  }
}
