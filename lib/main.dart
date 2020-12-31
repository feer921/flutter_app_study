import 'package:flutter/material.dart';
import 'res/listDatas.dart';
import 'package:flutter_app/pages/rounts/PageRounter.dart';
main(){
  runApp(MyApp());

}


class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: PAGE_ROOT,
      onGenerateRoute: onGenerateRoute
    );
  }

}

List<Widget> _getListData() {
//  var listResult = listData.map(value){
//
//  };
//  return null;
//  listData.map(f)
}
class HomeContent extends StatelessWidget{

  List<String> titles = List();

  HomeContent(){
    for(int i = 0 ; i < 20; i++) {
      titles.add("我是第$i个数据");
    }
  }

//  List<Widget> _innerListViewItem(){
//    List<Widget> list = new List();
//    for(int i = 0;i<20;i++) {
//      list.add(ListTile(
//        title: Text("我是第$i个数据"),
//      ));
//    }
//    return list;
//  }
  List<Widget> _innerListViewItem(){
    List<Widget> list = new List();
    Widget item(listItem){//这是一个方法中的方法,方法返回一个 Widget
      return ListTile(
          leading:Image.network(listItem["imageUrl"]),
          title:Text(listItem["title"]),
          subtitle:Text(listItem["author"])

      );

    }
    Iterable theListDatas = listData.map(item);//('','')
    print("theListDatas : $theListDatas");


    return theListDatas.toList();
  }

  Widget _buildListViewItem(context,index){

  }

  @override
  Widget build(BuildContext context) {
//    return ListView(children: this._innerListViewItem(),);
  
  return ListView.builder(

    itemCount: titles.length,
  );
  }
}

class ListContent extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      children: <Widget>[
        ListTile(
          title: Text("我是title"),
          subtitle: Text("我是子标题"),
        ),
        ListTile(
          title: Text("我是title"),
          subtitle: Text("我是子标题"),

        ),
        ListTile(
          title: Text("我是title"),
          subtitle: Text("我是子标题"),

        ),
        ListTile(
          title: Text("我是title"),
          subtitle: Text("我是子标题"),

        ),
        ListTile(
          title: Text("我是title"),
          subtitle: Text("我是子标题"),

        ),
        ListTile(
          title: Text("我是title"),
          subtitle: Text("我是子标题"),

        ),
      ],
    );
  }

}

class LayoutMode extends StatelessWidget{

  List<Widget> _buildItemWidgets() {
    Iterable<Widget> iterableWidgets = listData.map((
        value) { //这个方法决定 .map()方法返回什么数据类型
      return Container(
        child: Column(
            children: <Widget>[
              Image.network(value["imageUrl"]),
              Text(value["title"])
            ]

        ),
        decoration: BoxDecoration(
          border: Border.all(
            color: Color.fromRGBO(233, 233, 233, 0.9),
            width: 1,

          )
        ),
      );
    });
    return iterableWidgets.toList();
  }
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      mainAxisSpacing: 20.0,
      crossAxisCount: 2,
      children: _buildItemWidgets(),
      crossAxisSpacing: 10.0,
      padding: EdgeInsets.all(20),
    );
  }

}

