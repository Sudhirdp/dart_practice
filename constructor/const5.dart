class Company {
  int? x;
  String? str;
  Company(this.x, {this.str = "Core2webe"});
  void compInfo() {
    print(x);
    print(str);
  }
}

void main() {
  Company obj1 = new Company(100);
  Company obj2 = new Company(200, "Incubator");
  obj1.compInfo();
  obj2.compInfo();
}

//Error compiling to JavaScript:
// compile: lib/main.dart:13:29:
// Error: Too many positional arguments: 1 allowed, but 2 found.
//   Company obj2 = new Company(200, "Incubator");
//                             ^
// lib/main.dart:4:3:
// Info: Found this candidate, but the arguments don't match.
//   Company(this.x, {this.str = "Core2webe"});
//   ^^^^^^^
// Error: Compilation failed.

///Too many positional arguments: 1 expected, but 2 found.
///Here we have named and default parameter so in obj2 the named parameters must be passed as str:'Incubator' ,
/// else it will think you added another parameter which is not defined in constructor.
/// solution: Company obj2=Company(200,str:"Incubator");