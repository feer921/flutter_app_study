import 'package:flutter/material.dart';

import 'package:flutter_app/pages/rounts/PageRounter.dart';

class Product extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("商品页面"),

      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center, //| 竖方向为主轴
        crossAxisAlignment: CrossAxisAlignment.start,// -- 横方向为副轴
        children: <Widget>[
          RaisedButton(
            child: Text("跳转到商品详情"),
            onPressed: (){

              Navigator.pushNamed(context, PAGE_PRODUCT_DETAILS,arguments: {
                "product_id":"测试商品123456"
              }
              );

            },
          )
        ],
      ),
    );
  }
}
