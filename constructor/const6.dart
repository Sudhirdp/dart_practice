class Company {
  int? empCount;
  String compName;
  Company({this.empCount, this.compName = "Deloitte"});
  void compInfo() {
    print(empCount);
    print(compName);
  }
}
void main() {
  Company obj1 = new Company(empCount:100 , compName :"Veritas" );
  Company obj2 = new Company(compName:"Pubmatic",empCount:200);
  obj1.compInfo();
  obj2.compInfo();
}

// 100
// Veritas
// 200
// Pubmatic

///Here constructor has positional arguments as well as named parameters.
///The order of nameed parameters doesnt matter as long as there are passed with their names.
///Named parameters are optional unless they’re explicitly marked as required.