abstract class Test {
  void build();
}

class Test2 extends Test {
  @override
  void build() {
    super.build();
  }
}
// Error compiling to JavaScript:
// compile: lib/main.dart:8:11:
// Error: Superclass has no method named 'build'.
//     super.build();
//           ^^^^^
// Error: No 'main' method found.
// Error: Compilation failed.