class Parent {
  Parent() {
    print("In Parent Constructor");
  }
}

class Child extends Parent {
  Child() {
    super();
    print("In Child Constructor");
  }
}

void main() {
  Child obj = new Child();
}

// Error compiling to JavaScript:
// compile: lib/main.dart:9:5:
// Error: Superclass has no method named 'call'.
//     super();
//     ^^^^
// Error: Compilation failed.

///Here in dart to call parents constructor u cant call super like this instead
///child():super(){....} this will call parent constructor first and then call child constructor