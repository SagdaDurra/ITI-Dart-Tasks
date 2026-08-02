class Student{
  String? name ;
  int? age ;
  String? grade ;


  Student({String ?name ,int ?age ,String? grade}){
    this.name = name ;
    this.age = age ;
    this.grade = grade ;
  }
  displayInfo(){
    print("Name : $name");
    print("Age : $age");
    print("grade : $grade");
  }
}

class Car{
  String ? brand ;
  String ? model ;
  int ? year ;
  double ? speed ;
  // we can change the names in the parameter list it is not a must to be the same
  Car({String ? brand ,
  String ? model ,
  int ? year ,
  double ? speed }){
    this.brand = brand ;
    this.model = model ;
    this.speed = speed ;
    this.year = year ;
  }
// speed ?? (0 + 20) it makes like condition so didnt increase
//accelerate(){
// print("Speed Increased to : ${speed ?? 0 + 20} km/h");
//}
//
//breake(){
// print("Speed Decreased to : ${speed ?? 0 - 10}");
// we cant make this cause the speed itself didnt change or in right meaning it changed for a while then came to its original
//accelerate(){
//print("Speed Increased to : ${speed! + 20} km/h");
//}
//breake() {
//  print("Speed Decreased to : ${speed! - 10}");
//}
  accelerate(){
    speed = speed! + 20 ;
    print("Speed Increased to : ${speed!} km/h");
  }
// cant use break cause it is a key word
  breake() {
    speed = speed! - 10 ;
    print("Speed Decreased to : ${speed!} km/h");
  }
displayInfo(){
    print("brand : $brand");
    print("model : $model");
    print("speed : $speed");
    print("year : $year");
  }
}
int i = 0 ;
class Rectangle{
  double ? width ;
  double ? height ;
  // another look to the constructor
  Rectangle({this.height , this.width}) {
    i = i + 1 ;
    print("Rectangle ${i}");
    print("width = ${width!}");
    print("height = ${height!}");
  }

  area(){
    print ("Area = ${width! * height!} meter square");
  }
  perimeter(){
    print ("Perimeter = ${(width! + height!) * 2} meter");
  }

}
class AccountBank{
  String ? OwnerName ;
  double ? Balance ;

  AccountBank({this.Balance , this.OwnerName}) {
    print("${OwnerName!}\'s Balance : ${Balance!}") ;
  }


  deposit(double ? amount){
    print("Deposit : ${amount!} EGP");
    Balance = Balance! + amount! ;
  }
  withdraw(double ? amount){
    if (Balance! >= amount!) {
      print("Withdraw : ${amount} EGP");
      Balance = Balance! - amount! ;
    }else{
      print("no money bro");
    }
  }
  showbalance(){
    print("Current Balance = ${Balance!} EGP");
  }
}
class Book{
  String ? title ;
  String ? author ;
  double ? price ;

  Book({this.title , this.author , this.price});
  displaybook(){
    print("Titlt : ${title!}");
    print("Author : ${author!}");
    print("Price : ${price!}");
  }

}
class Library{
String ? libraryName;
List <Book>? booksNames = [] ;

Library({this.libraryName , this.booksNames});
int numofbooks = 0 ;
addbook(Book? book){
  // its not like cpp we have built in functions to use :)
  booksNames!.add(book!) ;
  numofbooks ++ ;
  print("Book Added Successfully!");
}
removebook(Book ? book){
  //int i = 0 ;
  //while(numofbooks > 0){
  //  if(book! == booksNames![i] ){
  //    booksNames![i] = booksNames![i+1] ;
  //    break ;                 ----->               wrong method to the delete
  //  }
  //  }
  //  print("Book Deleted Successfully !");

    int index = -1;

    for (int i = 0; i < booksNames!.length; i++) {
      if (booksNames![i] == book) {
        index = i;
        break;
      }
    }
    if (index == -1) {
      print("Book not found");
      return;
    }
    for (int i = index; i < booksNames!.length - 1; i++) {
      booksNames![i] = booksNames![i + 1];
    }

    booksNames!.removeLast();

    print("Book Deleted Successfully!");
  // or we have the easist answer that to make remove built iv function

  }
  displaybooks(){
  // there is a method with for each | for in
    for(int i = 0; i < booksNames!.length; i++){
      booksNames![i].displaybook(); // method in Book class
      print("================================");
    }
  }
}

void main(){
  // named parameters soooooo dont forget to put these name : , etc :(
Student S1 = Student(name : "Ahmed" ,age : 19 , grade : "A+");
S1.displayInfo();
print ("=====================================");
Student S2 = Student(name : "Sara" ,age : 20 , grade : "B+");
S2.displayInfo();
print ("=====================================");
Car C1 = Car(brand : "BMW" , model : "X5" , year : 2026 , speed: 80 );
C1.accelerate() ;
C1.accelerate() ;
C1.breake() ;
C1.displayInfo() ;
print ("=====================================");
Rectangle R1 = Rectangle(width : 5.5 , height: 6.5);
R1.area();
R1.perimeter();
print ("=====================================");
Rectangle R2 = Rectangle(width : 6.5 , height: 7.5);
R2.area();
R2.perimeter();
print ("=====================================");
Rectangle R3 = Rectangle(width : 7.5 , height: 8.5);
R3.area();
R3.perimeter();
print ("=====================================");
AccountBank A1 = AccountBank(OwnerName: "Ahmed" , Balance: 3000);
A1.deposit(500);
A1.deposit(100);
A1.withdraw(200);
A1.showbalance();
print ("=====================================");
AccountBank A2 = AccountBank(OwnerName: "Ali" , Balance: 5000);
A2.deposit(600);
A2.deposit(200);
A2.withdraw(50);
A2.showbalance();
print ("=====================================");
Library L1 = Library(libraryName: "Alex" , booksNames: []);
Book B1 = Book(title: "EL_Daheeh" , author: "Ahmed Elghandoor" , price : 200);
L1.addbook(B1);
Book B2 = Book(title: "Coffee with Uranium" , author: " DR Ahmed Khaled" , price : 100);
L1.addbook(B2);
Book B3 = Book(title: "Algorithms to live by" , author: "Tom Giffares" , price : 300);
L1.addbook(B3);
Book B4 = Book(title: "utobia" , author: "DR Ahmed Khaled" , price : 150);
L1.addbook(B4);

L1.displaybooks();
L1.removebook(B4);
L1.displaybooks();


}
