import 'dart:convert';
import 'package:shopping/models/user.dart';
import 'package:shopping/models/product.dart';

class Data {
  static List<User> users = [];
  static List<Product> products = [];

  static void fromJson(String json) {
    final jsonData = jsonDecode(json);

    final userList = jsonData['users'];
    final productData = jsonData['products'];

    users = (userList as List<dynamic>).map<User>((user) {
      return User(
        name: user['name'],
        password: user['password'],
      );
    }).toList();

    products = (productData as List<dynamic>).map<Product>((product) {
      return Product(
        name: product['name'],
        color: product['color'],
        price: product['price'].toDouble(),
      );
    }).toList();
  }
}
