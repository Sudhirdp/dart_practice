class Test {
  Test._private() {
    print("In demo");
  }
  factory Test() {
    print("In demo factory");
    return Test._private();
  }
}

void main() {
  Test obj = new Test();
}

// In demo factory
// In demo

///A constructor can be made private by using (_) underscore operator which means private in dart.
///You cannot create instances of the class using a private constructor from outside the library/file.