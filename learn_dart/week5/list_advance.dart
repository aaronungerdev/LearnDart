//where
//contains
//join()
//element
//map
//singleWhere
//lastWhere
//try catch
//finally
//add
//sort - compareTo
//expand
//remove - removeWhere

import '../week4/class_extends.dart';

void main() {
  final model = CarModel(
      category: CarModels.bmw, name: 'X5', money: 10000, isSecondHand: false);
  print(model.name);

  final carItems = [
    CarModel(
      category: CarModels.bmw,
      name: 'X5',
      money: 10000,
      isSecondHand: false,
    ),
    CarModel(
        category: CarModels.opel,
        name: 'insignia',
        money: 8000,
        isSecondHand: true),
    CarModel(
        category: CarModels.audi,
        name: 'a4',
        money: 12000,
        isSecondHand: false),
    CarModel(
        category: CarModels.opel,
        name: 'astra',
        money: 5000,
        isSecondHand: true),
    CarModel(
        category: CarModels.bmw, name: 'e30', money: 9000, isSecondHand: true),
  ];

  // How many second-hand cars are there?
  // int total = 0;
  // for (var item in carItems) {
  //   if (item.isSecondHand == true) {
  //     print(item.name);
  //     total++;
  //   }
  // }
  // print(total);

  final resultCount = carItems
      .where(
        (element) => element.isSecondHand == true,
      )
      .length;
  print(resultCount);

  final newCar = CarModel(
      category: CarModels.bmw, name: 'X5', money: 10000, isSecondHand: false);

  final isHaveCar = carItems.contains(newCar);
  if (isHaveCar) {
    print('Already we have');
  } else {
    print('Boss, we do not have, may we buy?');
  }

  final resultBmwMore1000 = carItems.where((element) {
    return element.category == CarModels.bmw && element.money >= 8000;
  }).join(',');

  print(resultBmwMore1000);

  final carNames = carItems.map((e) => e.name).join('-');
  print(carNames);

  bool isHaveCarMercedes = false;
  try {
    final mercedesCar = carItems.singleWhere(
      (element) => element.category == CarModels.mercedes,
    );
    isHaveCarMercedes = true;
    print(mercedesCar.name);
  } catch (e) {
    print('There is not car');
    isHaveCarMercedes = false;
  } finally {
    print('Do not ask me again please! $isHaveCarMercedes');
  }

  final index = carItems.indexOf(newCar);
  print(index + 1);

  carItems.sort((first, second) => second.money.compareTo(first.money));
  print(carItems);

  final users = carItems.expand((element) => element.users).toList();
  print(users);

  final _mercedes =
      CarModel(category: CarModels.mercedes, name: 'maybach', money: 100000);
  carItems.add(_mercedes);

  calculateToUser(List.of(carItems));

  carItems.remove(_mercedes);
  carItems.removeWhere((element) =>
      element.category == CarModels.audi || element.money < 10000.0);

  print(carItems);
}

void calculateToUser(List<CarModel> items) {
  final _items = [...items.toList()];
  final newItems = _items.map((CarModel e) {
    if (e.category == CarModels.bmw) {
      e.category = CarModels.bmw;
    }
    if (e.isSecondHand) {
      e.isSecondHand = true;
    }
    return e;
  });

  print(newItems);
}

//class CarModel
class CarModel {
  CarModels category;
  final String name;
  List<User> users;
  final double money;
  final String? city;
  bool isSecondHand;
  CarModel({
    required this.category,
    required this.name,
    required this.money,
    this.city,
    this.isSecondHand = true,
    this.users = const [],
  });

  @override
  bool operator ==(covariant CarModel other) {
    if (identical(this, other)) return true;

    return other.category == category &&
        other.name == name &&
        other.money == money &&
        other.city == city &&
        other.isSecondHand == isSecondHand;
  }

  @override
  int get hashCode {
    return category.hashCode ^
        name.hashCode ^
        money.hashCode ^
        city.hashCode ^
        isSecondHand.hashCode;
  }

  @override
  String toString() {
    return '$name - $money';
  }
}

//enum CarModels
enum CarModels {
  bmw,
  opel,
  audi,
  mercedes,
}
