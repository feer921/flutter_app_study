class Rect{
  num width;
  num height;

  static String sum;//静态属性

  static void getSum(){//静态方法

  }

  Rect(this.width,this.height);//默认构造方法简写

  area(){
    return this.width * this.height;
  }



  set areaHeight(value){
    this.height = value;
  }

  get area2{//前面加上系统提供的 get关键字，表示成为一个计算属性
    return this.width * this.height;
  }






}