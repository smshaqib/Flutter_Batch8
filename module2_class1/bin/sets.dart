main(){

  Set<String> names = {'Rafi', 'Shafi', 'Shafi', 'Siam', 'Shamim'};

      names.add('Rafi');
      print(names);

      print(names.length);
      print(names.first);
      print(names.last);
      print(names.elementAt(0));

      names.remove('Siam');
      print(names);

      names.addAll(['sadas','hhfsd']);
      print(names);
      names.addAll({'sh','bn'});
      print(names);
      
}