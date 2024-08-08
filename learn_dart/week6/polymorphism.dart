//polymorphism

void main() {
  IUser american = American();
  Spanish spanish = Spanish();
  american.sayName();
  spanish.sayName();
}

abstract class IUser {
  final String name;

  IUser(this.name);
  void sayName();
}

class American implements IUser {
  @override
  String get name => 'Jack';

  @override
  void sayName() {
    print('Hello $name');
  }
}

class Spanish implements IUser {
  @override
  String get name => 'Alex';

  @override
  void sayName() {
    print('Hola $name');
  }
}
