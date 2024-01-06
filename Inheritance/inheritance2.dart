class Test {
  int x = 30;
}

class Test2 extends Test {
  int x;
  Test2(this.x);
  void gun() {
    this.x = 8;
  }

  void fun() {
    print(this.x);
    print(super.x);
  }
}

void main() {
  Test2 obj = Test2(10);
  obj.gun();
  obj.fun();
}
//8
//30

///here super is used to access variable of parent and this is used to access its own class variable.
///gun method changes value of class membered x while x from parent remains as it is.