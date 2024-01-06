mixin Demo2 {
  void fun2() {
    print("IN demo2 fun");
  }
}
mixin Demo on Demo2 {
  void gun() {
    print("In demo gun");
  }
}

class Test3 with Demo2 {}

void main() {
  Test3 obj = new Test3();
  obj.fun2();
  obj.gun();
}


// Error compiling to JavaScript:
// compile: lib/main.dart:17:7:
// Error: The method 'gun' isn't defined for the class 'Test3'.
//  - 'Test3' is from 'package:dartpad_sample/main.dart' ('lib/main.dart').
//   obj.gun();
//       ^^^
// Error: Compilation failed.