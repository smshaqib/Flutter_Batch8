class Student{


  String username;
  String university;

  int _result=23;

  Student({required this.university, required this.username}){

    _showDebugMessage();
  }

  int showResult(){
    return _result;
  }

  void eating(){

    print('$username is eating');
  }

  void _showDebugMessage(){

    print('Creating object of Student');
  }
}