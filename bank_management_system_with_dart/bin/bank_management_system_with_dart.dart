void main(){

  Account person1 = Account(userName: 'Shaqib',userAccountNumber: '1234',balance: 10000);

  person1.DisplayAccount();

  person1.balanceDeposit(2000);

  print('\n');
  person1.DisplayAccount();


  person1.withdraw(500);
  person1.withdraw(500);
  person1.DisplayAccount();

}


class Account{

  String userName ;
  String userAccountNumber ;
  double balance;

  Account({required this.userName, required this.userAccountNumber, required this.balance}){

  }

  void balanceDeposit(double amount){

    if(amount>0){
      balance = balance + amount;
      print('Successfully Deposited');
      print('New Balance is: $balance');
    }
    else{
      print('Please add a positive value');
    }
  }

  void withdraw(double amount){


    if(amount <= balance && amount >0){
      balance = balance - amount;
    }
    else{
      print('Something went Wrong!');
    }

  }


  void DisplayAccount(){

    print('Account holder: $userName');
    print('Account number: $userAccountNumber');
    print('Total Balance: $balance');
  }

}