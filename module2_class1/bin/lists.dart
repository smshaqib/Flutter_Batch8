main(){

  List<String> ListOfStudentsName = ['Rahim','Karim','Mamun','Hafiz'];
  print(ListOfStudentsName);

  print(ListOfStudentsName[0]);

  ListOfStudentsName.add('Hasan');

  print(ListOfStudentsName);
  print(ListOfStudentsName.length);
  print(ListOfStudentsName.isNotEmpty);
  print(ListOfStudentsName.isEmpty);
  print(ListOfStudentsName.first);
  print(ListOfStudentsName.last);

  List<String> names = ['asdasd','asdsad','asghh'];

  ListOfStudentsName.addAll(names);
  print(ListOfStudentsName);

  ListOfStudentsName.addAll(['ss','hh']);
  print(ListOfStudentsName);

  //fixed length List
  const List<String> CC = ['shaqib'];
  //CC.add('nn');


  names.insert(0, 'rafat');
  print(names);

  names.insertAll(1, ['rakib','russel']);
  print(names);


  names[0]='Shafi';
  print(names);

  names.remove('Shafi');
  print(names);

  names.removeAt(0);
  print(names);


}