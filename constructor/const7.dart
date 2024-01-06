class Point {
  int x;
  int y;
}
void main(){
  Point obj=Point();
}

// Error compiling to JavaScript:
// compile: lib/main.dart:2:7:
// Error: Field 'x' should be initialized because its type 'int' doesn't allow null.
//   int x;
//       ^
// lib/main.dart:3:7:
// Error: Field 'y' should be initialized because its type 'int' doesn't allow null.
//   int y;
//       ^
// Error: Compilation failed.

///Non-nullable instance field 'x' / 'y' must be initialized. Try adding an initializer expression, or a generative constructor that initializes it, or mark it 'late'.
///Here the variables dont have assigned value and are not nullable so object cant initiaalize those variables.