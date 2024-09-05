main(){


  List <String> friends = [

    'Rafi',
    'Shafi',
    'Siam',
    'Mobin',
    'Akash'

  ];


  for(String i in friends){
    print(i);
  }


  Map <String, String> random = {

    'k1':'asdsad',
    'k2':'asdasdf',
    'k3':'asdgg',
    'k4':'ash',

  };


  for(String i in random.keys){
    print('key $i : ${random[i]}');
  }

}