import 'Book.dart';

void main(){

  Book b1 = Book("Megh Boleche Jabo Jabo","Humayun Ahmed",2015,0);
  Book b2 = Book("Opekkha","Selina Hossain",2008,10);
  Book b3 = Book("Brishti Bilash","Humayun Ahmed",2012,20);

  b1.read(20);
  b2.read(10);
  b3.read(0);


  print('Name: ${b1.title}, Author: ${b1.author}, Year: ${b1.publicationYear}, Pages Read: ${b1.pagesRead}');
  print('Name: ${b2.title}, Author: ${b2.author}, Year: ${b2.publicationYear}, Pages Read: ${b2.pagesRead}');
  print('Name: ${b3.title}, Author: ${b3.author}, Year: ${b3.publicationYear}, Pages Read: ${b3.pagesRead}');


  print('Total Book number is : ${Book.totalBooks}');

}