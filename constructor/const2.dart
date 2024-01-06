class Employee {
  int? empId;
  String? empName;
  Employee(){}
  Employee(int empId, String empName){}
}

void main() {
  Employee obj = new Employee();
}
// Error compiling to JavaScript:
// compile: lib/main.dart:5:3:
// Error: 'Employee' is already declared in this scope.
//   Employee(int empId, String empName){}
//   ^^^^^^^^
// lib/main.dart:4:3:
// Info: Previous declaration of 'Employee'.
//   Employee(){}
//   ^^^^^^^^
// lib/main.dart:9:22:
// Error: Can't use 'Employee' because it is declared more than once.
//   Employee obj = new Employee();
//                      ^
// Error: Compilation failed.

///Explaination
///In dart constructors are objects and two objects cant have same body.
///The unnamed constructor is already defined. Try giving one of constructor a name.
///Empty constructor bodies should be written using a ';' rather than '{}'.
///Unnecessary 'new' keyword. In dart we can create object without using 'new'keyword.