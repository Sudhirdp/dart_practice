mixin Test {
  void demo() {
    print("In Test demo");
  }
}
mixin Test2 {
  void demo() {
    print("in test2 demo");
  }
}

class Test3 with Test, Test2 {
  void demo() {
    print("In test3 demo");
    super.demo();
  }

  void fun2() {
    print("IN fun2");
  }
}

void main() {
  Test3 obj = Test3();
  obj.demo();
}

//Id test3 demo
//in test2 demo