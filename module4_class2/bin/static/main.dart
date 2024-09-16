import 'bank_account.dart';
import 'calculator.dart';

void main(){


  BankAccount bankAccount = BankAccount();
  print(BankAccount.bankName);
  //static use korar karone direct use kora gese

  BankAccount.getMessageFromBank();


  Calculator.add(4, 2);
  Calculator.subtract(3, 1);
}