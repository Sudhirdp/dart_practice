class Test {
  int? x;
  Test(this.x) {
    print("In test");
  }
}

class Test2 extends Test {
  int? y;
  Test2(this.y, int x) : super(x);
}

class Test3 extends Test2 {
  int? z;
  Test3(this.z, int y, int x) : super(y, x) {
    print("In test3");
  }
}

void main() {
  Test3 obj = Test3(10, 20, 30);
}
// In test
// In test3

///Inheritance Chain: Test3 inherits properties and constructors from both Test2 and Test.
///Constructor Chaining: Constructors of child classes can call their parent constructors using super().
///Property Values: The values passed to Test3's constructor are eventually assigned to x, y, and z in the respective classes.
///Execution Order: Constructors are called in order from the top of the inheritance chain to the bottom.
///Output Order: The output reflects the order of constructor calls and property assignments.