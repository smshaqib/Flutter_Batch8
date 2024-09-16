void main(){

  try{
    print('Going office');

    throw Exception('Our Custom Exception');

    print('Reached office');
    print('coming back home');

  }
  on DorManException{
    print('our custom made');
  }
  catch (e){
    print(e.toString());
  }
  finally{
    print('This will be finally executed');
  }

  print('Taking Breath');

}

class DorManException implements Exception{

  @override
  String toString(){
    return 'Random Exception';
  }
}
