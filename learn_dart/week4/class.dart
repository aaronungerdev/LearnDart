//class
//nullable
//properties
//instance
//short function
//constructor
//late
//isEmpty
//private _id

import 'model/user_model2.dart';
import 'model/user_model.dart';

void main() {
  final int customerMoney = 50;
  final int customerAge = 18;
  final String customerName = 'Jhon';
  final String customerCity = 'London';

  print(
      'name: $customerName, age: $customerAge, money: $customerMoney, city: $customerCity');

  if (customerAge >= 18) {
    print('You can buy!');
  } else {
    print("You can't buy!");
  }

  print('-------------------------------------------');

  final int newCustomerAge = 18;
  final int newCustomerMoney = 50;
  final String newCustomerName = 'Frank';
  final String newCustomerCity = 'Manchester';
  controlCustomerAge(newCustomerAge);

  print(
      'name: $newCustomerName, age: $newCustomerAge, money: $newCustomerMoney, city: $newCustomerCity');

  print('------------------------------------------');

  int? number;
  // print(number! + 10);     // false using

  //for example true using
  // ignore: unnecessary_null_comparison
  if (number != null) {
    print(number + 10);
  } else {
    print(10 + 10);
  }

  print('----------------------------------------------');

  List<int?> moneys = [100, null, 0, 50];

  for (var item in moneys) {
    if (item != null) {
      if (item >= 100) {
        print('Welcome');
      } else {
        print('BYE!');
      }
    } else {
      print('Create Account!');
    }
  }

  print('---------------------------------------------------');

  int? money1 = 15;
  bool result = controlMoney(money1) == null ? false : true;
  print(result);

  print('-----------------' * 5);

  User user = User('Frank', 50, age: 18, city: 'Sao Palo', id: '3');
  User user2 = User('Jack', 20, age: null, city: null, id: '1');
  User user3 = User('Alex', 12, id: '12');
  print(user.city);
  print(user2.city);
  print(user3.age);

  if (user.city == null) {
    print('The customer did not entry city name!');
  } else {
    if (user.city!.isEmpty) {
      print('OK!');
    }
    if (user.city == 'Sao Palo') {
      print('You may get benefit promotion!');
    } else {
      print('You may not get benefit promotion!');
    }
  }

  print('---------------');

  controlMoney(20);

  print(user2.userCode);

  print('----------------------');

  if (user3.isSpecialUser('12')) {
    int total = user3.money += 5;
    print('Applied to promotion, your money:$total');
  }

  print('------------------------');

  NewUser newUser = NewUser('Bella', 100);
  int money = newUser.money += 5;
  print(money);

  print('------------------------------------');

  print(user2.toString());
} //main

// ignore: body_might_complete_normally_nullable
int? controlMoney(int? money1) {
  if (money1 != null && money1 >= 0) {
    return money1;
  }

  // if (money1 == null || money1 == 0) {
  //   return null;
} //controlMoney

void controlCustomerAge(int Age) {
  if (Age >= 18) {
    print('You can buy!');
  } else {
    print("You can't buy!");
  }
} //controlCustomerAge
