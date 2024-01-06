class Demo {
  Demo() {
    print("In demo");
  }
  factory Demo() {
    print("In demo factory");
    return Demo();
  }
}

void main() {
  Demo obj = new Demo();
}

// Error compiling to JavaScript:
// compile: lib/main.dart:5:11:
// Error: 'Demo' is already declared in this scope.
//   factory Demo() {
//           ^^^^
// lib/main.dart:2:3:
// Info: Previous declaration of 'Demo'.
//   Demo() {
//   ^^^^
// lib/main.dart:7:12:
// Error: Can't use 'Demo' because it is declared more than once.
//     return Demo();
//            ^
// lib/main.dart:12:18:
// Error: Can't use 'Demo' because it is declared more than once.
//   Demo obj = new Demo();
//                  ^
// Error: Compilation failed.

///Two or more object cant have same name.
///try to name named constuctor. 