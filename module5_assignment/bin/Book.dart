class Book{

  late String title;
  late String author;
  late int publicationYear;
  late int pagesRead;

  static int totalBooks = 0;

  Book(this.title,this.author,this.publicationYear,this.pagesRead){
    totalBooks++;
  }

  void read(int pages)=>pagesRead+=pages;


  int getPagesRead(){
    return pagesRead;
  }

  String getTitle(){
    return title;
  }

  String getAuthor(){
    return author;
  }

  int gerPublicationYear(){
    return publicationYear;
  }

  int getBookAge(){
    return DateTime.now().year - publicationYear;
  }


}


