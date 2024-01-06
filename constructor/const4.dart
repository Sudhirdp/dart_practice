class Company {
  int empCount;
  String compName;
  Company(this.empCount, [this.compName = "Biencaps"]);
  void compInfo() {
    print(empCount);
    print(compName);
  }
}
void main() {
  Company obj1 = new Company(100);
  Company obj2 = new Company(200, "Pubmatic");
  obj1.compInfo();
  obj2.compInfo();
}

// 100
// Biencaps
// 200
// Pubmatic

/// '[]' can be used to provide default value to parameters so if u dont pass value of that parameter it will take the default value.
/// Unnecessary 'new' keyword. As we can create objects without using 'new' keyword . Dart suggests not to use new.
/// '[]' can be used for optional parameters as well.