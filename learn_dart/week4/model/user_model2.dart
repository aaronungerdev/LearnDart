//constructor
//extension
class NewUser {
  NewUser(this.name, this.money, {this.userCode, this.age, this.city}) {
    userCode = (city ?? 'London') + name;
  }
  //properties
  String name;
  int money;
  int? age;
  String? city;
  String? userCode;
}

extension User2ControlExtension on NewUser {
  void controlName() {
    print(name);
  }
}
