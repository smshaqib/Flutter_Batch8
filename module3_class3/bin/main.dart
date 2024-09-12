

import 'abstraction.dart';
import 'encapsulation.dart';

void main(){

  Student rahim = Student(university: 'Diu', username: 'rahim khan');

  print(rahim.username);
  print(rahim.showResult());

  BankAccount myAccount = BankAccount(userName: 'Rahim Mia', address: 'Dhaka');
  
  myAccount.deposit(2000);
  myAccount.deposit(2000);
  
  print(myAccount.getBalance());

  myAccount.credit(3000);
  print(myAccount.getBalance());

  myAccount.credit(2000);
  print(myAccount.getBalance());

  print('Tax ammount is ${myAccount.getTax()}');
  print(myAccount.getBalance());
}