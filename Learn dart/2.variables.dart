late String description; // Lazily initializing a variable.

void main() {
  //  int num;
  //  print(num);  this throws this Error: Non-nullable variable 'num' must be assigned before it can be used.

// declare using var
  var fname = 'Arinda';
  print(fname);

// declare using type, explicitly setting the datatype
  String name1 = 'Asiimwe';
  print(name1);

//nullable type, null safety
  String? name;
  print(name);

//dynamic datatype
  dynamic x = "Atweta";
  print(x);

//final keyword
  final val1 = 12;
  print(val1);
  // val1 = 13; Error: The final variable 'val1' can only be set once.

//const keyword
  const pi = 3.14;
  const area = pi * 12 * 12;
  print("The output is ${area}");

  description = 'Feijoada!';
  print(description);
}
