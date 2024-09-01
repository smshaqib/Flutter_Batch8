main(){

  Map<int,String> students = {
    1: 'Rahim',
    2: 'Karim',
    3: 'Hasan',
    4: 'Fahad',
  };

  print(students);

  print(students[2]);
  print(students[4]);


  Map<String,String> friends = {

    'fahad':'teacher',
    'iram':'engineer',
    'fahad':'engineer',

  };

  print(friends);


  friends['fahad'] = 'Businessman';
  print(friends);
  friends.clear();

  friends.addAll({

    'marud':'ios dev',
    'tareq': 'android',
  });

  print(friends);

  friends.clear();
  print(friends);

  friends['key'] = 'Shaqib';
  friends['key2'] = 'Shaqib';
  print(friends);

  print(friends.keys);
  print(friends.values);

  friends.remove('Shaqib');
  print(students);



  Map<String, List<String> > friendsFriends = {};
  friendsFriends['fahim'] = [
    'abc',
    'abc',
    'abc',
    'abc',
    'abc',
    'abc',
    'abc',
    'abc',
    'abc',
  ];

  print(friendsFriends);

  print(friends.keys);
  print(friends.values);

  friends.remove('iram');
  print(friends);
}