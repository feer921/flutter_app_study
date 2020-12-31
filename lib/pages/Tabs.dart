import 'package:flutter/material.dart';
import 'package:flutter_app/pages/tabs/HomePage.dart';
import 'package:flutter_app/pages/tabs/SettingsPage.dart';
import 'package:flutter_app/pages/tabs/Category.dart';
import 'package:flutter_app/pages/rounts/PageRounter.dart';
class Tabs extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return StateTab();
  }

}

class StateTab extends State<Tabs>{
  int _curTabIndex = 0;

  List _pages = [
    HomePage(),
    CategoryPage(),
    SettingPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "标签栏",

        ),
      ),
//        body: HomeContent(),
//        body: LayoutMode(), //GridView风格布局
      body: this._pages[this._curTabIndex],

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: this._curTabIndex,
        selectedItemColor: Colors.red,
        onTap: (index){
          setState(
                  () {
                this._curTabIndex = index;
              }
          );
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text("首页")
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.category),
              title: Text("分类")
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              title: Text("设置")
          ),
        ],
      ),
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: UserAccountsDrawerHeader(
                    accountName: Text("你好，用户"),
                    accountEmail: Text("feer921@163.com"),
                    currentAccountPicture: CircleAvatar(
                      backgroundImage: NetworkImage("https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=85009028,3259894977&fm=26&gp=0.jpg"),
                    ),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage("https://timgsa.baidu.com/timg?image&quality=80&size=b10000_10000&sec=1563427562&di=c4b082448d9be6dc524617cac64f3016&src=http://b-ssl.duitang.com/uploads/item/201707/07/20170707230145_GScwH.png"),
                          fit: BoxFit.cover
                      )
                    ),
                  ),
                )
              ],
             ),
            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.home),
              ),
              title: Text("个人空间"),
              onTap: (){
                Navigator.pushNamed(context, PAGE_LOGIN);

              },
            ),
            Divider(),
            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.people),
              ),
              title: Text("个人中心"),
              onTap: (){
                Navigator.of(context).pop();//先把抽屉栏隐藏
                Navigator.pushNamed(context, PAGE_USER_CENTER);
              },
            ),
            Divider(),
            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.settings),
              ),
              title: Text("设置中心"),
            ),
            Divider(),
          ],
        ),
      ),
    );
  }

}