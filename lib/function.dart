
void main(){
  var name = MyClass();
  name.printname("pranjal","choudhary");
  name.printname("rohan","singh");
  int a =2;
  print ("squre of $a is ${name.sqrt(a)}");
}
class MyClass{
  MyClass(){
    print("constructor called");
  }
  void printname(String firstname ,String lastname){
    print("$firstname $lastname");
  }
  int sqrt(int a ){
    a =a*a;
    return a;
  }
}