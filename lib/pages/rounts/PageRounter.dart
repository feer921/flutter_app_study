import 'package:flutter/material.dart';
import '../AppBarDemoPage.dart';
import '../CheckBoxPage.dart';
import '../DateTimePickerPage.dart';
import '../LoginPage.dart';
import '../RadioDemoPage.dart';
import '../TabControlerPage.dart';
import '../Tabs.dart';
import '../SearchPage.dart';
import '../FormPage.dart';
import '../Product.dart';
import '../ProductDetails.dart';
import '../UserCenter.dart';


final  PAGE_ROOT = "/";
final  PAGE_SEARCH = "/search";
final  PAGE_FORM = "/form";
final  PAGE_PRODUCT = "/product";
final  PAGE_PRODUCT_DETAILS = "/product_details";
final  PAGE_APPBAR_DEMO = "/appbardemo";
final  PAGE_TAB_CONTROLER = "/tabcontrolerpage";
final  PAGE_USER_CENTER = "/usercenter";
final  PAGE_LOGIN = "/login";
final  PAGE_CHECKBOX = "/checkbox";
final  PAGE_RADIO = "/radio_demo";

final  PAGE_DATE_TIME = "/date_time";


final pages = {
  PAGE_ROOT:(context) => Tabs(),
  PAGE_SEARCH:(context) => SearchPage(),
  PAGE_FORM:(context) => FormPage(),
  PAGE_PRODUCT:(context) => Product(),
  PAGE_PRODUCT_DETAILS:(context,{arguments}) => ProductDetails(arguments: arguments),
  PAGE_APPBAR_DEMO:(context) => AppBarDemoPage(),
  PAGE_TAB_CONTROLER:(context) => CustomTabControlerPage(),
  PAGE_USER_CENTER:(context) => UserCenter(),
  PAGE_LOGIN:(context) => LoginPage(),
  PAGE_CHECKBOX:(context) => CheckBoxPage(),
  PAGE_RADIO:(context) => RadioDemoPage(),
  PAGE_DATE_TIME:(context) => DateTimePickerPage(),
};



//固定写法
//为命名路由的传值写法
// ignore: strong_mode_top_level_function_literal_block
var onGenerateRoute = (RouteSettings settings) {
  // 统一处理
  final String name = settings.name;
  final Function pageContentBuilder = pages[name];//这里是一个方法变量
  if (pageContentBuilder != null) {
    if (settings.arguments != null) {
      final Route route = MaterialPageRoute(
          builder: (context) =>
              pageContentBuilder(context, arguments: settings.arguments));
      return route;
    }
    else{
      final Route route = MaterialPageRoute(
          builder: (context) =>
              pageContentBuilder(context));
      return route;
    }
  }
};