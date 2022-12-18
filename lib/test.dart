void main() {
  var n = "mouse";
  var p = 100;

  // สร้าง object product โดยดึงมาจาก database
  var product = Product(n, p, orderCount: 10);

  print(product.name);
  print(product.price.toString());
  print(product.orderCount.toString());
  product.orderCount = 10;
}

class Person {
  final String firstName;

  final String lastName;
  final int age;

  //shotcut syntax, shothand ของภาษา Dart
  Person(this.firstName, this.lastName, this.age);
}

class Product {
  final String name;
  final int price;
  int orderCount;

  // positional parameter, name parameter
  Product(this.name, this.price, {this.orderCount = 0}); //constructor
}
