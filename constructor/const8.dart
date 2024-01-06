class Player {
  int? jerNo;
  String? pName;

  const Player(this.jerNo, this.pName);
}

void main() {
  Player obj=const(45,”Rohit”);
}

// Error: The non-ASCII character '”' (U+201D) can't be used in identifiers, only in strings and comments.
//   Player obj=const(45,”Rohit”);
//                       ^
// lib/main.dart:18:29:
// Error: The non-ASCII character '”' (U+201D) can't be used in identifiers, only in strings and comments.
//   Player obj=const(45,”Rohit”);
//                             ^
// lib/main.dart:18:23:
// Error: Undefined name '”Rohit”'.
//   Player obj=const(45,”Rohit”);
//                       ^^^^^^^
// lib/main.dart:18:19:
// Error: A value of type '(int, invalid-type)' can't be assigned to a variable of type 'Player'.
//  - 'Player' is from 'package:dartpad_sample/main.dart' ('lib/main.dart').
//   Player obj=const(45,”Rohit”);
//                   ^
// lib/main.dart:14:9:
// Error: Constructor is marked 'const' so all fields must be final.
//   const Player(this.jerNo, this.pName);
//         ^
// lib/main.dart:11:8:
// Info: Field isn't final, but constructor is 'const'.
//   int? jerNo;
//        ^
// lib/main.dart:12:11:
// Info: Field isn't final, but constructor is 'const'.
//   String? pName;
//           ^
// Error: Compilation failed.

///Can't define a const constructor for a class with non-final fields.
/// Try making all of the fields final, or removing the keyword 'const' from the constructor.
/// For const constructor variables must be final
/// 
/// If your class produces objects that never change, you can make these objects compile-time constants. 
/// To do this, define a const constructor and make sure that all instance variables are final.