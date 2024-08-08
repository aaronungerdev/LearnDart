// ignore_for_file: public_member_api_docs, sort_constructors_first
//Singelton (static)
//Eager Singleton
//factory constructor

import 'model/product_config_model.dart';

void main() {
  calculateMoney(Product.money ?? 0);

  productNameChange();
  calculateMoney(Product.money ?? 0);

  final user1 = User('Alex', 'PC');
  final newProduct2 = Product(user1.product);
  final newProduct3 = Product.fromUser(user1);
  print('$newProduct2  $newProduct3');
  productNameChange();

  ProductConfig.instance.apiKey;
  ProductConfig.instance.apiKey;
  ProductConfig('AA');
  ProductLazySingleton.instance;
}

void productNameChange() {
  Product.money = null;
}

void calculateMoney(int money) {
  if ((Product.money ?? 0) > 5) {
    print('Added 10 dollar');
    Product.increment(10);
    print(Product.money);
  }
}

class Product {
  Product(this.name) {}

  Product.Alex([this.name = 'Alex']);
  static int? money = 10;
  String name;

  static const companyName = 'ARBank';
  factory Product.fromUser(User user) {
    //factory constructor
    return Product(user.name);
  }

  static void increment(int newMoney) {
    if (money != null) {
      money = money! + newMoney;
    }
  }
}

class User {
  final String name;
  final String product;

  User(this.name, this.product);
}
