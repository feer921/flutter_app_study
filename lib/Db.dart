abstract class Db{
  String url;
  add();
  save();
  delete();
}

abstract class DbNew {
  String url;
  remove();
}
class MySql implements Db,DbNew{//与Java有区别，子类实现的话，必须连属性也实现
  @override
  add() {
    return null;
  }

  @override
  delete() {
    return null;
  }

  @override
  save() {
    return null;
  }

  @override
  String url;//与Java有区别，子类实现的话，必须连属性也实现

  @override
  remove() {
    return null;
  }

}

class A{
  String info = "this is A";

  meIdA() {
    print(info);
  }
}

class B{
  String info = "this is B";

  meIsB() {
    print(info);

  }
}
class C with A,B{//实现类似的多继承,这里写的顺序，会决定 ，A,B 两个类中如果有相同的方法或者属性时，排在后面的会把前面 的覆盖

}

//<T> T getData(T defValue) {//泛型方法，Java写法
//
//}

T getData<T>(T defValue) {

}
void main() {

  C c = new C();

  c.meIsB();
  c.meIdA();

  print("c .info = ${c.info}");

  getData<String>("1");


}

class XtypeAdd<T>{
  List<T> mList;

  void add(T dataItem) {
    if(null == mList) {
      mList = new List<T>();

    }
    mList.add(dataItem);

  }

}

abstract class Cache<T>{
  void cache(String key,T value) ;

  T getCacheValue(String key);
}

class FileCache<T> extends Cache<T>{
  @override
  void cache(String key, T value) {
  }

  @override
  T getCacheValue(String key) {
    return null;
  }

}

class StringCache<T> extends Cache<T>{
  @override
  void cache(String key, T value) {
  }

  @override
  T getCacheValue(String key) {
    return null;
  }



}