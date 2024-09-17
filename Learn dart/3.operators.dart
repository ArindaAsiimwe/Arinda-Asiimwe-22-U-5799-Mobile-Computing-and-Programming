void main() { 
   var a = 10; 
   var res = a > 12 ? "The value is greater than 10":"The value is lesser than or equal to 10"; 
   print(res); 

//arithmetic operators
    var m = 25;
    var n = 4;
    print("m+n - ${m + n}"); //addition
    print("++m - ${++m}"); //increment before
    print("m++ - ${m++}"); //increment after
    print("--m - ${--m}"); //decrement before
    print("m-- - ${m--}"); //decrement after
    print("m-n - ${m - n}"); //substraction
    print("m/n - ${m / n}"); //division
    print("m*n - ${m * n}"); //multiplication
    print("m%n - ${m % n}"); //modulus
    print("m~/n - ${m ~/ n}"); //	Division Int


// Conditional Operators
  //Ternary Operator
    var age = 45;
    age > 60 ? print("Senior Citizen") : print("Not Senior Citizen");

  //Null-coalescing operators
      var str=null;
      print(str ?? 'default'); //default

      var str1="one";
      print(str1 ?? 'default'); // one

} 

//Type test operators
// Assignment operators
// Logical operators
// Bitwise and shift operators
// Spread operators