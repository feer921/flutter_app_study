import 'package:flutter_app/Person.dart';
import 'package:flutter_app/Rect.dart';

void printInfo(){
  print("我是自定义方法");

}

String getStringInfo(){

  return "我的返回字符串类型";
}
void main(){

//  List l1 = [1,2,3];
//
////  l1.forEach((value)==> print(value) );
//
//
//  printInfo();
//
//  //方法内的定义 方法
//
//  int getMyNum() {
//    var num = 123;
//    return num;
//  }
//    var n = getMyNum();
//
//  print("n = $n");
//
//
//  print(getUserInfo("li",111));
//  print(getUserInfo("li"));
//
//
//  var noNameFn = (){
//     print("我是匿名方法");
//
//  };
//
//  noNameFn();
//
//  print(getUserInfos("feer",age: 10,sex: "dd"));


  var p = new Person("张三",122);

  p.setAge(100);

  p.getPersonInfo();


  Rect r = Rect(10, 20);


  print("面积：${r.area()}");

  print("面积2：${Rect(100, 20).area2}");//计算属性







}

  String getUserInfo(String userName,[int age]){//可选参数

  if(age != null) {
    return "姓名：$userName --- 年龄: $age";
  }
  return "姓名：$userName --- 年龄: 保密";

  }

  //命名参数 方法 ，外部调用时，参数名称需要 和方法里定义的一致
  String getUserInfos(String userName,{int age,String sex ="男"}){
    if(age != null) {
      return "姓名：$userName -性别：$sex-- 年龄: $age";
    }
    return "姓名：$userName --性别：$sex - 年龄: 保密";

  }




