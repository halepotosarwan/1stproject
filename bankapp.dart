import 'dart:io';
void main(){
  stdout.write("Enter Your Bank Account title: ");
  var title=stdin.readLineSync()!;
  var balance=0;
  deposit dp=new deposit(title, balance);
  var i=true;
  while(i==true){
print("01: Deposit Amount: \no2: Witdrawl Amount: \n03: Check Transaction List: \n04: Check all Data");
var input=int.parse(stdin.readLineSync()!);
if (input==1){
stdout.write("Enter Amount You Want to Deposit: ");
  var add=int.parse(stdin.readLineSync()!);
dp.data(add);
}
else if(input==2){
stdout.write("Please Enter Amount You Want to Withdraw: ");
var withd=int.parse(stdin.readLineSync()!);
dp.withdraw(withd);
}
else if(input==3){
dp.transaction();
}
else if(input==4){
  dp.PrintAllData();
}
  
  else{
    print("Enter Correct Data:");
  }
  
  print("Do You Want to Continue Than press y");
  var chk=stdin.readLineSync()!;
  if(chk.toLowerCase()=="y"|| chk.toLowerCase()=="yes"){
    i=true;
  }
  else{
    i=false;
  }
}
}
class deposit{
  deposit(String title, int balance){
this.title=title;
this.balance=balance;
this.CurrentBalance=balance;
  }
  String? title;
  int? balance;
  var thislist=[];
  int? CurrentBalance;
  void data(int amount){
    balance=int.parse(amount.toString());
  thislist.add(amount);
  print("Your Balance is: ${balance}");
  print("Your Transaction List: ${thislist}");
  }
  void withdraw(int amount){
if(amount>int.parse(balance.toString())){
  print("No Sufficient Balance:");
}
else if(amount<int.parse(balance.toString())){
  balance=int.parse(balance.toString()) -amount;
  thislist.add(-amount);
  print("New Balance is: ${balance}");
  print("Transaction List is: ${thislist}");
}
  }
  void transaction(){
    thislist.forEach((element) { 
      if(element>0){
        print("Amount Deposit is: ${element}");
      }
      else if(element<0){
        print("Amount withdrwa is: ${element}");
      }
    });
  }
  void PrintAllData(){
    print("Title : ${title}");
    print("Current Balance : ${balance}");
    print("First Time Balance : ${CurrentBalance}");
    thislist.forEach((element) {
      print(element);
    });
  }
}
