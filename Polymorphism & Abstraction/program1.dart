class Company {
  void companyName() {
    print('Google');
  }
}

class Employee extends Company {
  void companyName() {
    print('Apple');
  }
}

void main() {
  Company obj = Employee();
  obj.companyName();
}
//Apple

///parents refrence is given and childs object is create here so at compile time it will check parents methods and
///at run time it will run methods of child
///if method is not present in parent and called using the object it gives error