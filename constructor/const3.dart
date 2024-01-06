class Demo {
  final int? x;
  final String? str;
  const Demo(this.x, this.str);
}
void main(){
  Demo obj1 = const Demo(10,"Core2web");
  print(obj1.hashCode);
  Demo obj3 = const Demo(10,"Core2web");
  print(obj3.hashCode);
  Demo obj2 = const Demo(10,"Biencaps");
  print(obj2.hashCode);
}

// 63435812
// 63435812
// 1063608862

///The hash code is computed for all arguments that are actually supplied, 
///even if they are null , by numerically combining the Object. hashCode of each argument.
///Hashcodes for different object have different values. If object has same values then the hashcode will bw same as well.
///The hash code of an object should only change if the object changes in a way that affects equality. 
///Hash codes must be the same for objects that are equal to each other according to operator ==.