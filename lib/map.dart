void main(){
  var mapp={
    'a':'b',
    'c':2,
    "d":3.14
  };
  print(mapp);

  mapp['e']='pranjal';

  mapp['a']=23;
  print(mapp);

  print(mapp.length);
  print(mapp.isEmpty);
  print(mapp.values);
  print(mapp.keys);
  print(mapp.containsKey('a'));

  for(int i =0;i<10;i++){
    print("here we go : $i");
  }
}