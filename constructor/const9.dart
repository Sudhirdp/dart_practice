int a=10;
class Test {
  int x=20;
  int y=20;
  static num z=30;
  Test(this.x,this.y,this.a) ;
  void fun(){
    print(a);
    print(x);
    print(y);
  }
}
void main(){
  Test obj=Test(10,30,40);
  obj.fun();
}

// Error compiling to JavaScript:
// compile: lib/main.dart:6:27:
// Error: 'a' isn't an instance field of this class.
//   Test(this.x,this.y,this.a) ;
//                           ^
// Error: Compilation failed.

///Try correcting the name to match an existing field, or defining a field named 'a'.