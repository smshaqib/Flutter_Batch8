class BankAccount{

  String userName;
  String address;
  double _balance=0;
  double _tax=0;


  BankAccount({required this.userName, required this.address});


  void deposit(double amount){

    _balance = _balance + amount;

  }

  void credit(double amount){

    if(amount>_balance){
      print('insufficient balance');
      return;
    }

    _balance = _balance - amount;
  }

  double getBalance(){

    return _balance;
  }

  double getTax(){
    return ((_balance/100)*15)+50;
  }
}