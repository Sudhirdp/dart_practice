class Test{
  final int x;
  final int y;
  const Test(this.x,this.y){
    print("In const constructor");
  }
}
void main(){
  Test obj= Test(10,20);
  print(obj.x);
}
// Error compiling to JavaScript:
// compile: lib/main.dart:4:3:
// Error: A const constructor can't have a body.
//   const Test(this.x,this.y){
//   ^^^^^
// Error: Compilation failed.

///explaination 
///we cant provide body to a constant constructor
///Const constructors can't have a body.
///Use 'const' with the constructor to improve performance.