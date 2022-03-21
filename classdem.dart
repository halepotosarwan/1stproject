import 'dart:io';
void main(){
// var car1=car();
// stdout.write("Enter Your Car Name Please:");
// var n=stdin.readLineSync()!;
// car1.name=n;
// car1.disp();

// var add1=new add();
// print("\n\t*** Simple Calculator Using Class ***");
// print("\n\t***Addition***");
// stdout.write("Enter Your First Value:");
// var a1=int.parse(stdin.readLineSync()!);
// stdout.write("Enter Your Second Value:");
// var b1=int.parse(stdin.readLineSync()!);
// add1.a+=a1;
// add1.b+=b1;
// add1.ad();


// var sub1=new sub();
// print("\n\t***Subtraction:***");
// stdout.write("Enter Your First Value:");
// var s=int.parse(stdin.readLineSync()!);
// stdout.write("Enter Your Second Value:");
// var sb=int.parse(stdin.readLineSync()!);
// sub1.sb1+=s;
// sub1.sb2=sb;
// sub1.subtrac();


// var mul1=new multi();
// print("\n\n\t***Multiplication***");
// stdout.write("Enter Your First Value:");
// var m2=int.parse(stdin.readLineSync()!);
// stdout.write("Enter Your Second Value:");
// var m3=int.parse(stdin.readLineSync()!);
// mul1.m+=m2;
// mul1.m1+=m3;
// mul1.mul();

// var division=new div();
// print("\n\n\t***Division:***");
// stdout.write("Enter Your First Value:");
// var di1=int.parse(stdin.readLineSync()!);
// stdout.write("Enter Your Second Value:");
// var di2=int.parse(stdin.readLineSync()!);
// division.di+=di1;
// division.dii+=di2;
// division.divi();

// print("\n\tChecking Number is even or Odd:");
// var evenodd=new even_odd();
// evenodd.eve();

print("\n\t***Searching From List:***");
var chk=new check();
chk.checkValue();
}
class car {
  String name="";
  void disp(){
    print("Car Name is ${name}");
  }
}

class add{
  int a=0;
  int b=0;
  void ad(){
    print("Addition of Two Numbers: ${a+b}");
  }
}

class sub{
  int sb1=0;
  int sb2=0;
  void subtrac(){
    print("Subtraction of Two Number is: ${sb1-sb2}");
  }
}

class multi{
  int m=0;
  int m1=0;
  void mul(){
    print("Multiplication of Two Number is: ${m*m1}");
  }
}

class div{
  num di=0;
  num dii=0;
  void divi(){
    print("Division Of Two Numbers is: ${di~/dii}");
  }
}

class even_odd{
  // int a=0;
  void eve(){
    stdout.write("Enter Any Number:");
    var numb=int.parse(stdin.readLineSync()!);
    if(numb%2==0){
      print("This is Even Number:");
    }
    else{
      print("This is Odd Number:");
    }
  }
  }

class check{
  void checkValue(){
    List thislist=["sarwan","sadiq","sabir","socrate"];
    stdout.write("Enter Value To Check Name is present or not:");
    var name=stdin.readLineSync()!;
    var chk=0;
  for(var i=0;i<thislist.length;i++){
    if(name.toLowerCase()==thislist[i]){
      chk+=1;
    print(i);
    }
    }
    if(chk==0){
      print("Not Found:");
    }
    else{
      print("Data is present:");
    }
  }    
}
