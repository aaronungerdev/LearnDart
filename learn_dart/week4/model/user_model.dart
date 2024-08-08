//encapsulation
//accsess modifiers
//getter setter

class User extends Object {
  //constructor
  User(String name, int money, {required String id, int? age, String? city}) {
    //optionel
    this.name = name;
    this.age = age;
    _money = money;
    this.city = city;
    this.userCode = (city ?? 'London') + name;
    _id = id;
  }
  //properties
  late final String name;
  late int _money;

  int get money => _money;

  set money(int value) {
    // ignore: unnecessary_null_comparison
    _money = money == null ? 0 : money; //short fun
  }

  late final int? age;
  late final String? city;
  late final String userCode;

  late final String _id;

  bool isSpecialUser(String id) {
    return _id == id;
  }

  bool isEmptyID() {
    return _id.isEmpty;
  }

  bool get isEmpty => _id.isEmpty;
}
