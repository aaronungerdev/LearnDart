//SOLID
//Single Responsibility Principle(SRP)
//Open Closed Principle(OCP)
//Liskov Subsitution Principle(LSP)
//Interface Segregation Principle(ISP)
//Dependency Inversion Principle(DIP)
void main() {
  IDatabase database = SQL();
  database = MongoDB();
  database.write();
}

//Single Responsibility Principle(SRP)
class UserManager {
  UserManager({required this.name});
  String name;

  void changeUserName(String name) {
    this.name = name;
  }
}

class UserLocalization {
  UserLocalization(this.manager);
  final UserManager manager;

  void changeLocalization() {
    print('object');
  }

  void updateNameAndLocalization() {
    manager.changeUserName('Frank');
    changeLocalization();
  }
}

//Open Closed Principle(OCP)
class Product {
  //core
  Product(this.name, this.money);
  final String name;
  final String money;
}

class ProductCategories extends Product {
  ProductCategories(String name, String money) : super(name, money);

  final String category = "/";
}

//Liskov Subsitution Principle(LSP)
abstract class IDatabase {
  void write();
}

class SQL extends IDatabase {
  @override
  void write() {}
}

class MongoDB extends IDatabase {
  @override
  void write() {}
}

//Interface Segregation Principle(ISP)
abstract class IUserOperation implements IUserLocation, ILanguage {
  void write();
  void read();
  void delete();
}

abstract class IUserLocation {
  void locationChange();
}

abstract class ILanguage {
  void language();
}

class UserLocation extends IUserLocation {
  @override
  void locationChange() {}
}

//Dependency Inversion Principle(DIP)
abstract class ICameraManager {
  void readQR();
}

class DeviceCameraManager extends ICameraManager {
  DeviceCameraManager(this.iphoneCameraReader);
  final IphoneCameraReader iphoneCameraReader;

  @override
  void readQR() {}
}

class IphoneCameraReader extends ICameraManager {
  @override
  void readQR() {}
}
