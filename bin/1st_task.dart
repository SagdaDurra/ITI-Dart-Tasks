import 'package:args/args.dart';

const String version = '0.0.1';

void main(){
  print("=========== Exercise 1 ============");
  String ? name ;
  int ? age ;
  double ? salary ;
  print("name : ${name ?? "it gives null" }");
  print("age : ${age ?? "it gives null"}");
  print("salary : ${salary ?? "it gives null"}");
  // if iam sure they arenot null
 // print("name : ${name ! }");
 // print("age : ${age ! }");
 // print("salary : ${salary ! }");

  print("===================================");
  print("=========== Exercise 2 ============");
  String ? name1 = "CR7" ;
  int ? age1 = 41 ;
  double ? salary1 = 8000000.9999;
  print("name : ${name1 ?? "it gives null" }");
  print("age : ${age1 ?? "it gives null"}");
  print("salary : ${salary1 ?? "it gives null"}");
  // if iam sure they arenot null( HERE IAM SURE THEY ARENOT NULL :) )
  print("name : ${name1 ! }");
  print("age : ${age1 ! }");
  print("salary : ${salary1 ! }");

  print("===================================");
  print("=========== Exercise 3 ============");
  String ? club = "Alahly" ;
  print("Club : ${club ?? "No Name"}");
  // if we want it to print no name
  // we can make it with if condition but let us imagine that we are taking value from backend
  String ? club1 ;
  print("Club : ${club1 ?? "No Name"}");

  print("===================================");
  print("=========== Exercise 4 ============");
  String ? city  ;
  print("City : ${city ?? "unknown city"}");

  print("===================================");
  print("=========== Exercise 5 ============");
  double ? discount = 400 ;
  print("Discount : ${discount ?? "No Discount"}");
  // if we want it to print no discount
  // we can make it with if condition but let us imagine that we are taking value from backend
  double ? discount1 ;
  print("Discount : ${discount1 ?? "No Discount"}");

  print("===================================");
  print("=========== Exercise 6 ============");
  // the method is below the void main
  // using positional arguments
  sum(2, 5);

  print("===================================");
  print("=========== Exercise 7 ============");
  // the method is below the void main
  calculateRectangleArea(5.5 , 6.5);

  print("===================================");
  print("=========== Exercise 8 ============");
  // the method is below the void main
  isEven(4);
  isEven(3);

  print("===================================");
  print("=========== Exercise 9 ============");
  // the method is below the void main
  grade(90);
  grade(80);
  grade(70);
  grade(20);

  print("===================================");
  print("=========== Exercise 10 ============");
  // the method is below the void main
  // positional parameters
  student("Ronaldo" , 41);

  print("===================================");
  print("=========== Exercise 11 ============");
  // i made it in exercise 7

  print("===================================");
  print("=========== Exercise 12 ============");
  // the method is below the void main
  // positional parameters
  employee( "Salah" , "Software Engineer" , 50000.99) ;

  print("===================================");
  print("=========== Exercise 13 ============");
  // the method is below the void main
  // optional parameters
  printName("Mohammed");
  printName("Mohammed" , "Nour");

  print("===================================");
  print("=========== Exercise 14 ============");
  // the method is below the void main
  // optional parameters
  book("El daheeh") ;
  book("El daheeh" , "Ahmed") ;

  print("===================================");
  print("=========== Exercise 15 ============");
  // the method is below the void main
  // optional parameters
  login("ahalwy90");
  login("ahalwy90" , "78909");

  print("===================================");
  print("=========== Exercise 16 ============");
  // the method is below the void main
  // named arguments
  user(name: "Shaaban", age: 50) ;
  print("===================================");
  print("=========== Exercise 17 ============");
  // the method is below the void main
  // named arguments
  product(name: "iphone") ;
  product(name: "iphone" , price : 50000.999) ;

  print("===================================");
  print("=========== Exercise 18 ============");
  // the method is below the void main
  // named arguments
  car( brand : "BMW" , model : "X5");
  car( brand : "BMW" , model : "X5" , year : 2026);

  print("===================================");
  print("=========== Exercise 19 ============");
  // the method is below the void main
  // named arguments
  register( email : "sagdah814@gmail.com" , password: "12345");
  register( email : "sagdah814@gmail.com" , password: "12345" , isAdmin: true);

  print("===================================");
  print("=========== Exercise 20 ============");
  int age4 = 20 ;
  if (age4 >= 18){
    print("Adult");
  }
  // the else
  int age5 = 13 ;
  if (age5 >= 18){
    print("Adult");
  } else {
    print("babyyyy");
  }
  print("===================================");
  print("=========== Exercise 21 ============");
  int mark = 80 ;
  int mark2 = 10 ;
  if (mark >= 50){
    print("Passed");
  }
  if(mark2 >= 50){
    print("Passed");
  } else {
    print("Failed");
  }
  print("===================================");
  print("=========== Exercise 22 ============");
  double salary4 = 30000 ;
  double salary5 = 100 ;
  if (salary4 >= 10000){
    print("High salary");
  }
  if(salary5 >= 10000){
    print("High salary");
  } else {
    print("low salary");
  }
  print("===================================");
  print("=========== Exercise 23 ============");
  int age7 = 20 ;
  int salary8 = 8000 ;
  if (age7 > 18){
    if(salary8 > 5000){
      print("Accepted");
    }
  }
   age7 = 14 ;
   salary8 = 1000 ;
  if (age7 > 18){
    if(salary8 > 5000){
      print("Accepted");
    }
  } else {
    print("Not Accepted");
  }
  print("===================================");
  print("=========== Exercise 24 ============");
  String username = "admin" ;
  String password = "12345" ;
  if (password == "12345"){
    if (username == "admin"){
      print("login successful");
    }
  } else {
    print("Not Successful");
  }
  username = "amgad";
  password = "6789" ;
  if (password == "12345"){
    if (username == "admin"){
      print("login successful");
    }
  } else {
    print("Not Successful");
  }
  print("===================================");
  print("=========== Exercise 25 ============");
  int temp = 25 ;
  if (temp > 20 && temp < 30){
    print("Nice temperature");
  }
  print("===================================");
  print("=========== Exercise 26 ============");
  int num = 6;
  if (num % 2 == 0){
    print("Even");
  }else {
    print ("odd");
  }
  num = 7 ;
  if (num % 2 == 0){
    print("Even");
  }else {
    print ("odd");
  }
  print("===================================");
  print("=========== Exercise 27 ============");
  double balance = 90000 ;
  if (balance > 10000){
    print ("purchase successful");
  } else {
    print("Insufficient balance");
  }
  balance = 1000 ;
  if (balance > 10000){
    print ("purchase successful");
  } else {
    print("Insufficient balance");
  }
  print("===================================");
  print("=========== Exercise 28 ============");
  String password9 = "123456789" ;
  if (password9.length >= 8){
    print ("Strong Password");
  }else {
    print ("weak password") ;
  }
  password9 = "12345" ;
  if (password9.length >= 8){
    print ("Strong Password");
  }else {
    print ("weak password") ;
  }
  print("===================================");
  print("=========== Exercise 29 ============");
  int grad = 40 ;
  if (grad >= 90 && grad <= 100){
    print ("A");
  } else if (grad >= 80 && grad <= 89){
    print("B") ;
  } else if (grad >= 70 && grad <= 79){
    print("C") ;
  } else if (grad >= 60 && grad <= 69) {
    print("D");
  } else {
    print("F");
  }
  print("===================================");
  print("=========== Exercise 30 ============");
  int a_ge = 80 ;
  if (a_ge > 0 && a_ge <= 12){
    print ("Child");
  } else if (a_ge >= 13 && a_ge <= 19){
    print("Teenager") ;
  } else if (a_ge >= 20 && a_ge <= 59){
    print("Adult") ;
  } else if (a_ge >= 60) {
    print("Senior");
  }
  print("===================================");
  print("=========== Exercise 31 ============");
  String Trafficlight = "red" ;
  if (Trafficlight == "red" ){
    print ("stop");
  } else if (Trafficlight == "yellow" ){
    print("ready") ;
  } else if (Trafficlight == "green"){
    print("go") ;
  } else  {
    print("Invalid colour !");
  }
  print("===================================");
  print("=========== Exercise 32 ============");
  //int n = 0 ;
  //while (n <= 10){  my first answer
  //  n++ ;
  //  print(n);
  //}
  int n = 1;
  while (n <= 10) {
    print(n);
    n++;
  }
  print("===================================");
  print("=========== Exercise 33 ============");
  //int x = 2 ;
  //while (x <= 20){
  //  if (x % 2 == 0){
  //    print (x) ;
  //  } else {    my first answer : cause var x didnt change even true , i want it to be increased every time even the condition is false or true
  //    x++ ;
  //  }
  //}
  int x = 2;
  while (x <= 20) {
    if (x % 2 == 0) {
      print(x);
    }
    x++;
  }
  print("===================================");
  print("=========== Exercise 34 ============");
  int k = 1 ;
  int sum1= 0 ;
  while(k <= 100){
    sum1 += k;
    k++ ;
  }
  print (sum1);
  print("===================================");
  print("=========== Exercise 35 ============");
  int y = 0 ;
  while (y <= 12){
    print( y * 7) ;
    y++ ;
  }
  print("===================================");
  print("=========== Exercise 36 ============");
  int u = 1 ;
  do {
    print("Hello");
    u++ ;
  } while(u <= 5) ;
  print("===================================");
  print("=========== Exercise 37 ============");
  int h = 10 ;
  while (h >= 1){
    print (h);
    h--;
  }
  print("===================================");
  print("=========== Exercise 38 ============");
  int l = 20 ;
  while(l >= 1){
    print (l);
    l-- ;
  }
  print("===================================");
  print("=========== Exercise 39 ============");
  //int j = 1 ;
  //while (j <= 15){
  //  if(j % 2 != 0){
  //    print (j);
  //  } else {   my first answer
  //    j++ ;
  //  }
  //}
  int j = 1;
  while (j <= 15) {
    if (j % 2 != 0) {
      print(j);
    }
    j++;
  }
  print("===================================");
  print("=========== Exercise 40 ============");
  //int fact = 1 ;
  //int s = 1 ;
  //do {
  //  fact *= s ;     my first answer
  //  s++;
  //} while (s > 5);
  int fact = 1;
  int s = 1;
  do {
    fact *= s;
    s++;
  } while (s <= 5);

  print(fact);
  print("===================================");
  print("=========== Exercise 41 ============");
 //int d = 3 ;
 //while (d >= 30){
 // if (d % 3 == 0){
 //   print(d);
 // } else {    the same mistake :)
 //   d++ ;
 // }
  int d = 3;
  while (d <= 30) {
    if (d % 3 == 0) {
      print(d);
    }
    d++;
  }
}
// 1st method
int sum( int ? a , int ? b){
  int c = a! + b! ; // ! ---> means inshallah not null
  print("$a + $b = $c " ); //important
  return 0 ;
}

// 2nd method
double calculateRectangleArea(double? width , double? height){
  double area = width! * height! ; // i forget it again ! :-)
  print("Area = ${ area} meter square" );
  return 0 ;
}

// 3rd method
bool isEven(int? num){
 if(num! % 2 == 0 ) {
   print(true);
 } else {
   print(false);
 }
 return true ;
}

// fourth method
String grade (int? mark){
  if (mark! <= 100 && mark! > 85 ){
    print("Excellent");
  } else if (mark! <= 85 && mark! > 75){
    print("Very Good");
  } else if (mark! <= 75 && mark! >= 50){
    print("Good");
  } else {
    print("Failed");
  }
  return " " ;
}

// fifth method
void student(String ? name , int ? age ){
  print(name!) ;
  print(age!);
}

// sixth method
// i made it in exercise 7

// seventh method
void employee( String ? name , String ? job , double ? salary){
  print("Name : ${name!}");
  print("Job : ${job!}");
  print("Salary : ${salary!} EGP ");
}

// eighth method
void printName(String ? firstName , [String ?  lastName]){
  print("$firstName ${lastName ?? " "}");
}

// ninth method
// default parameter : optoinal parameter with assigned value + we can update it when calling
void book(String ? title , [String ? author = "Unknown"]){
  print("Title : ${title!}");
  print("Author : ${author!}");

}

//tenth method
void login(String ? username , [String ? password = "12345"]){
  print("Username : ${username!}");
  print("Password : ${password!}");
}

// eleventh method
void user ({required String ? name , required int age}){
  print("name : ${name!}");
  print("age : ${age!}");
}

// 12 method
void product({required String ? name , double ? price = 0}){
  print("name : ${name!}");
  print("price : ${price!}");
}

// 13 method
void car({required String ? brand , required String ? model , int year = 2025}){
  print("brand : ${brand!}");
  print("model : ${model!}");
  print("year : ${year!}");

}
// 14 method
void register({required String ? email , required String ? password , bool isAdmin = false}){
  print("email : ${email!}");
  print("password : ${password!}");
  print("Is Admin : ${isAdmin!}");
}