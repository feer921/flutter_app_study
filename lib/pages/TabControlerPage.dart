import 'package:flutter/material.dart';

class CustomTabControlerPage extends StatefulWidget {
  @override
  _CustomTabControlerPageState createState() => _CustomTabControlerPageState();
}

class _CustomTabControlerPageState extends State<CustomTabControlerPage> with SingleTickerProviderStateMixin{
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(length: 2, vsync: this);

  }
  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "TabController变量控制"
        ),
        bottom: TabBar(
          controller: this._tabController,
          tabs: <Widget>[
            Tab(
              text: "What the fuck",
            ),
            Tab(
              text: "Hello,you are good",
            )
          ],
        ),
      ),

      body: TabBarView(
        controller: this._tabController,
        children: <Widget>[
          Center(
            child: Text("tab1的内容"),
          ),
          Center(
            child: Text("tab2的内容"),
          ),
        ],
      ),
    );
  }
}
