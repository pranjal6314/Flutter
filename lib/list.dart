void main(){

  var num =[10,20,30,40,50];
  print(num);

  num.add(60);
  num.add(70);

  var name=[];
  name.add("rohan");
  name.insert(1, 'pranjal');
  name.insert(2, 'choudhary');
  print(name);
 var roll =[];
 roll.add(01);
 roll.add(02);
 roll.insert(2, 03);
 roll.insertAll(2,num);
  
 
 print(roll);
 
 roll.replaceRange(0,2, [100,200,300]);
 print(roll);


 var demo =[10,23,40,32,41,99,78,100];
 print(demo);
 demo.removeLast();
 print(demo);
 demo.remove(99);
 print(demo);

 demo.removeAt(1);
 print(demo);

 print(demo[0]);

 print("length : ${demo.length}");
 print("reversed list : ${demo.reversed}");
 print("first :${demo.first} , last :${demo.last}");
 print("is empty : ${demo.isEmpty}");

}