//imp
class Test {
  int x = 30;
  int y = 30;
}

class Test2 extends Test {
  int x;
  Test2(this.x);
  void gun() {
    this.x = 8;
    this.y = 19;
  }

  void fun() {
    print(super.x);
    print(super.y);
  }
}

void main() {
  Test2 obj = Test2(10);
  obj.gun();
  obj.fun();
}
// 30
// 19

///line 6 • The member 'x' overrides an inherited member but isn't annotated with '@override'.
// Try adding the '@override' annotation.

// line 6 • Field overrides a field inherited from 'Test'. (view docs)
// Try removing the field, overriding the getter and setter if necessary.

// line 9 • Unnecessary 'this.' qualifier. (view docs)
// Try removing 'this.'.


///Creates an object obj of class Test2 with x as 10:
/// The Test2 constructor sets its own x to 10.
/// The inherited x from Test remains 30.

/// Calls obj.gun():
/// Modifies obj.x to 8 (affecting only Test2's x).
/// Modifies obj.y to 19 (affecting the inherited y from Test).

/// Calls obj.fun():
/// Prints super.x, accessing the original x from Test (output: 30).
/// Prints super.y, accessing the modified y in Test (output: 19).

///x is redefined in class test2. so it has its own instance in test2 class and y is inherited from parent class so when u change y it will be changed for super.