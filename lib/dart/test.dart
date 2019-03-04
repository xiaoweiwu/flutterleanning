bool topLevel = true;
void main(){
  print("hello world");
  int age = 29;
  var ageVar = 29;
  var name = "wuxiaowei";
  print('my name is $name,I am $ageVar');
  var arr = ['ni','hao'];
  _printSomething(arr);
  dynamic dname = '111';
  _printSomething(dname);
  int line;
  _printSomething(line);

  final finalName = 'bob';
  final String nickName = 'nickName';

  const bar = 1000;
  // bar = 1;
  var foo = const [11,12,13];
  _printSomething(foo);
  var y = 1.1;
  double z = 1;
  var one = int.parse('1');
  print(one==1);
  var dOne = double.parse("1.1");
  _printSomething(dOne == 1.1);
  var s1 = '123';
  var s2 = '123';
  _printSomething(s1 == s2);

  var s3 = '''
  hhhhhh
  hhhhhhfasfdfadf
  ''';
  _printSomething(s3);
  _printSomething("------------list-----------");
   var list = [1,2,3];
   list.add(3);
   _printSomething('sssss${list.length}');
  _printSomething(list[1]);
  for(var i in list){
    _printSomething(i);
  }
  _printSomething("-------------map------------");
  var map1 = {1:'hello',2:'world',3:'China'};
  var map2 = Map();
  map2['4'] = "fsafds";
  map2.addAll(map1);
  map2.updateAll((key,value)=> value+"1");
  map2.removeWhere((key,value)=> key==1);
  _printSomething(map1[1]);
  _printSomething(map2,map2.runtimeType);
  map1.forEach((key,value)=>{
    _printSomething(key,value)
  });
  _printSomething("-------------set------------");
  var set1 = {'ONE','TWO','THREE','ONE'};
  var set2 = {'nine','ten'};
  set1.add("five");
  set1.addAll(set2);
  _printSomething(set1);
  set1.where((it)=>it.contains('O')).forEach(_printSomething);
  
//  var clapping = '\u{1f44f}';
//  print(clapping);
//  print(clapping.codeUnits);
//  print(clapping.runes.toList());
//
//  Runes input = new Runes(
//  '\u2665  \u{1f605}  \u{1f60e}  \u{1f47b}  \u{1f596}  \u{1f44d}');
//  print(new String.fromCharCodes(input));

  _printSomething("------------函数-------------");
  list.forEach((i)=>{
  print("forEach:$i")
  });

  var loudify = (msg) => "!!!${msg.toUpperCase()}!!!";
  _printSomething(loudify("nnnniiiii"));

  var insideMain = true;

  void myFunction() {
  var insideFunction = true;
  void nestedFunction() {
  var insideNestedFunction = true;
    assert(topLevel);
    assert(insideMain);
    assert(insideFunction);
    assert(insideNestedFunction);
   }

   nestedFunction();
  }
  myFunction();
  _printSomething("closures------------");
  var add2 = makeAdder(2);
  _printSomething(add2(3));


  var x;
  x = foo;
  assert(foo == x);

  x = A.bar;
  assert(A.bar == x);

  var v = A();
  var w = A();
  x = w.baz;

  assert(w.baz == x);

}

void foo(){}
class A{
  static void bar(){}
  void baz(){}
}

Function makeAdder(num addBy){
  return(num i)=>addBy+i;
}

isNoble(number){
  return number!=null;
}
_printSomething(var sth,[var sth2]){
  if(sth2 ==null) {
    print(sth);
  }else{
    print('$sth+$sth2');
  }
}