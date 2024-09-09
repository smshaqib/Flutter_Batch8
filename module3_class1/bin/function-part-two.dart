int getResult(int a,int b, [int c = 0]){ //optional Parameter

  print(c);
  return (a*b)+10;
}

void printMyName(String name){
  print(name);
}

String getUserName({required int age, int id=0}){
  return "shaqib";
}

void main(){

  print("shaqib");
  print("rakib");

  int res = getResult(5,10);
  print(res);

  getResult(12, 13,10);
  String userName = getUserName(age: 12,id: 33);
  String userName2 = getUserName(age: 12);
  print(userName);

}