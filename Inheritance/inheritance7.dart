class Demo1 {
  int x;
  Demo1(this.x);
  void gun(){
    print(x);
  }
}

class Demo2 extends Demo1 {
  Demo2(super.x);
  void fun() {
    print(x);
  }
}

void main() {
  Demo1 obj2 = Demo2(10);
  obj2.fun();
  obj2.gun();
}
// Error compiling to JavaScript:
// compile: lib/main.dart:18:8:
// Error: The method 'fun' isn't defined for the class 'Demo1'.
//  - 'Demo1' is from 'package:dartpad_sample/main.dart' ('lib/main.dart').
//   obj2.fun();
//        ^^^
// Error: Compilation failed.

///parennts refrence is given and childs object is created so every method u run using this object must be in parent class as it checkes it at compile time.