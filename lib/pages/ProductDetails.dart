import 'package:flutter/material.dart';

///
/// 商品详情页
///
class ProductDetails extends StatefulWidget {
  Map arguments;
  ProductDetails({Key key,this.arguments}):super(key:key);

  @override
  _ProductDetailsState createState() => _ProductDetailsState(arguments: this.arguments);
}

class _ProductDetailsState extends State<ProductDetails> {
  Map arguments;

  _ProductDetailsState({this.arguments});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("商品Id：${arguments['product_id']}"),
      ),
      body: Text("商品详情"),
    );

  }
}
