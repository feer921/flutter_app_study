
void main(){

  Map m = new Map();

  m["name"] = "fee";

  m["age"] = 19;

  print(m);

  m.forEach((key,value){

    print(key + value);


  });


}