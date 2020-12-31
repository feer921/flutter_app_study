void main(){

  var str = "122";

  if(str is String) {
    print(str);

  }

  //List
  var l1 = ["1",1,"3"];
  l1.add(3);

  print(l1);
  var l2 = new List<String>();

  l2.add("1");
  print(l2);


  int b;
  b ??= 23;
  print(b);

  var a = 222;

  var b3 = a ?? 10;//如果a 为null,则赋值后面的值

  print("b3 = $b3");

  String nullStr;

  try{

    print(nullStr.length);

    }catch(err) {
      print(err);

    }

    int i = 888;

    int i2;
    i2 ??= i;

    print('i2= $i2');


    //map

  var m1 = {"name":"fee","key2":2,"list1":["列表元素1","列表元素2","列表元素3"]};

  print("m1 = $m1");

}