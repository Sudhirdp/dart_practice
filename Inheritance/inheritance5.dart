class Test {
  int x = 20;
  String str = "Core2web";
  void parentMethod() {
    print(x);
    print(str);
  }
}

class Test2 extends Test {
  int x = 10;
  String str = "Incubator";
  void childMethod() {
    print(x);
    print(str);
  }
}

void main() {
  Test2 obj = new Test2();
  obj.parentMethod();
  obj.childMethod();
}
// 10
// Incubator
// 10
// Incubator

///test2 Overrides the values of x and str with its own values (10 and "Incubator").
///as the object is of child clalss ie test2 class the method of parentmethos is also called from that class only (as it is inherited from parent) 