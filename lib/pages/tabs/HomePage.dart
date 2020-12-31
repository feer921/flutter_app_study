import 'package:flutter/material.dart';
import '../FormPage.dart';
import '../SearchPage.dart';
import 'package:flutter_app/pages/rounts/PageRounter.dart';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return ListView(

      children: <Widget>[
        ListTile(
          title: Text("我是一个item"),
          subtitle: Text("点击跳转到搜索界面"),
          onTap: (){
            //方案一：
//            Navigator.of(context).push(
//                MaterialPageRoute(
//                   builder: (context) => SearchPage()
//            )
//            );
            //二：
//          Navigator.of(context).pushNamed("/search");
          Navigator.pushNamed(context, PAGE_SEARCH);

          },
        ),
        ListTile(
          title: Text("我是一个item"),
          subtitle: Text(" 点击跳转到表单界面 "),
          onTap: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>FormPage(title: "我是跳转过来的标题",)));
          },
        ),
        ListTile(
          title: Text("我是一个item"),
          subtitle: Text("跳转到商品界面"),
          onTap: () {
            Navigator.pushNamed(context, PAGE_PRODUCT);
          },
        ),

        ListTile(
          title: Text("我是一个item"),
          subtitle: Text("跳转到Appbar_demo"),
          onTap: () {
            Navigator.pushNamed(context, PAGE_APPBAR_DEMO);
          },
        ),

        ListTile(
          title: Text("我是一个item"),
          subtitle: Text("跳转到自定义的TabControler"),
          onTap: () {
            Navigator.pushNamed(context, PAGE_TAB_CONTROLER);
          },
        ),
        ListTile(
          title: Text("我是一个item"),
          subtitle: Text("跳转到CheckBox demo"),
          onTap: () {
            Navigator.pushNamed(context, PAGE_CHECKBOX);
          },
        ),

        ListTile(
          title: Text("我是一个item"),
          subtitle: Text("跳转到Radio demo"),
          onTap: () {
            Navigator.pushNamed(context, PAGE_RADIO);
          },
        ),
        ListTile(
          title: Text("我是一个item"),
          subtitle: Text("跳转到日期时间选择 demo"),
          onTap: () {
            Navigator.pushNamed(context, PAGE_DATE_TIME);
          },
        ),
      ],
    );

  }
}
