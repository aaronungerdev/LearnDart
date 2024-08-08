//abstract class

void main() {
  User newUser = User('Alex', 25);
  final bankUser = BankUser('Frank', 20, 12);
  final specialUser = SpecialUser('Aaron', 100, 20, 0.50);
  newUser.sayMoneyWithCompanyName();
  bankUser.sayMoneyWithCompanyName();
  specialUser.sayMoneyWithCompanyName();

  print(specialUser.calculateMoney);
  print(specialUser.money);
}

abstract class IUser {
  IUser(this.name, this.money);
  final String name;
  final int money;

  void sayMoneyWithCompanyName() {
    print('Alex you have $money dolar.');
  }
}

class User extends IUser {
  User(this.name, this.money) : super(name, money);
  final String name;
  final int money;
}

class BankUser extends IUser {
  BankUser(String name, int money, this.bankingCode) : super(name, money);
  final int bankingCode;

  void bankSpecialLogic() {
    print(money);
  }
}

class SpecialUser extends IUser {
  SpecialUser(this.name, this.money, this.bankingCode, double discount)
      : super(name, money) {
    _discount = discount;
  }
  final String name;
  final int money;
  final int bankingCode;
  late final double _discount;

  double get calculateMoney => money - (money * _discount); // Fat Arrow
}
