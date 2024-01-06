class Test {
  int? x;
  static int y = 20;
  Test.initX(this.x);
  static void changeY() {
    y = 30;
  }
}

class Test2 extends Test {
  Test2(int x) : super.initX(x);
}

void main() {
  Test2 obj = Test2(40);
  Test2.changeY();

  print(Test2.y);
}

// Error compiling to JavaScript:
// compile: lib/main.dart:16:9:
// Error: Member not found: 'Test2.changeY'.
//   Test2.changeY();
//         ^^^^^^^
// lib/main.dart:18:15:
// Error: Member not found: 'y'.
//   print(Test2.y);
//               ^
// Error: Compilation failed.

///static variables and methods can be only called using class name as the are memebers of class
///Static methods and variables in Dart cannot be inherited or overridden. Static methods are a type of global function that is restricted in scope.