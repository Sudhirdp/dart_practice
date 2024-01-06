class Demo {
  void fun();
}

class Demo1 implements Demo {
  void fun() {}
}

void main() {
  Demo obj = Demo1();
}

// Error compiling to JavaScript:
// compile: lib/main.dart:1:7:
// Error: The non-abstract class 'Demo' is missing implementations for these members:
//  - Demo.fun
// class Demo {
//       ^^^^
// lib/main.dart:2:8:
// Info: 'Demo.fun' is defined here.
//   void fun();
//        ^^^
// Error: Compilation failed.

///fun method in demo class has no bidy either give body to it or make it abstract that means u must make class abstract as well.