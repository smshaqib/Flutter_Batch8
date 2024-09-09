void main(){

  int? a;



  int? b = null;
  print(a);
  print(b);

   a = 34;
   print(a);

   a = null;


   a = 35;
   b = 20;

   // Force unwrap
   int res = a+b;


   String? username;


   print(username?? 'Default username');
   print(username?? 'another');

   username = 'shaqib';

   print(username?? 'Default username');

}