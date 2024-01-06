//imp
class Test {
  int x;
  int? y;
  Test({required this.x, this.y});
}

class Test2 extends Test {
  Test2(int x, int y) : super(x: 88) {
    print(x);
    print(y);
    print(this.y);
  }
  void fun() {
    print(this.x);
    print(super.x);
  }
}

void main() {
  Test2 obj = Test2(19, 20);
  obj.fun();
}
// 19
// 20
// null
// 88
// 88

///Test2 Overrides the constructor to always set x to 88 in the parent class using super(x: 88).
///Creates an object obj of class Test2 with arguments 19 and 20.
// However, the constructor of Test2 ignores these arguments and sets x to 88 in the parent class.

///in test2 constructor the local values will be printed

///Line 8 defines the constructor for the Test2 class. It takes a single argument x and uses the super keyword to call the constructor of the parent class (Test) with two arguments: x and y=null. This means that:
/// The x value passed to the Test2 constructor is also passed to the Test constructor.
/// The y property of the Test2 object is set to null because the second argument to the super call is null.