class Person {
  String name = "fee";

  int age;

  String _nickName;// 前面加下线线就成私有属性了,但必须单独成类文件才有效

//  Person(String name,int age)
//  {
//    this.name = name;
//    this.age = age;
//  }
  Person(this.name,this.age);//可以简写成这样

  Person.me()//相当于静态方法
  {
    print("我是命名构造函数");

  }
  void getPersonInfo(){

    print("${this.name} -- ${this.age}");
  }

  void setAge(int age) {
    this.age = age;
  }


  _eat() {//方法 前加下划线就成私有方法了
    print("人会吃饭");

  }

  excute() {
    _eat();
  }
}