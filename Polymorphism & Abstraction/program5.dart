class Test {
  void fun() {
    print("Test class");
  }

  static void gun() {
    print("In static test");
  }
}

class Test2 extends Test {
  @override
  int fun() {
    super.fun();
    return 10;
  }

  @override
  void gun() {
    print("In test2 gun");
    super.gun();
  }
}

void main() {
  Test2 obj = Test2();
  obj.fun();
}
// Error compiling to JavaScript:
// compile: lib/main.dart:21:11:
// Error: Superclass has no method named 'gun'.
//     super.gun();
//           ^^^
// Error: Compilation failed.

