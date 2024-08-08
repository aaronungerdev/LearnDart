//is
//dynamic
//as
//short if
//overloading
//mixin (class but without constructor)
//with

void main() {
  _User user = _User('Steve', age: 15);

  if ((user.age ?? 0) >= 18) {
    //_user.age ?? 0  ---> if there is not age default "0"
    print('You are an adult');
  }

  if (user.age is! int) {
    if (user.age! < 18) {
      print('You are a child');
      user.updateMoneyWithString('USD');
    } else {
      user.updateMoneyWithNumber(
          1); // firstly defined string but now int (error)
    }
  }
  final _newType =
      user.moneyType is String ? (user.moneyType as String) : " "; //short if
  print(_newType + "A");

  final money1 = Bank(50, 12, 'Kevin');
  final money2 = Bank(50, 12, 'Ben');
  print(money1 == money2); // false  (reference and value type)

  print(money1 + money2); //operator defined in Bank class
  print(money1.toString()); //overloading

  Bank bank = Bank(20, 12, 'Charlie');
  bank
    ..money += 10 //cascade notation
    ..id += 1
    ..updateString('Jack');
  print(bank.money);
  print(bank.id);
  print(bank.name);
}

class _User {
  final String name;
  final int? age;
  dynamic moneyType;

  _User(this.name, {this.age});

  void updateMoneyWithString(String data) {
    moneyType = data;
  }

  void updateMoneyWithNumber(int number) {
    moneyType = number;
  }
}

class Bank with BankMixin {
  String name;
  int money;
  int id;

  Bank(this.money, this.id, this.name);

  int operator +(Bank newBank) {
    return this.money + newBank.money;
  }

  @override
  String toString() {
    return super.toString() + 'Alex';
  }

  bool operator ==(covariant Bank other) {
    if (identical(this, other)) return true;

    return other.money == money && other.id == id;
  }

  @override
  int get hashCode => money.hashCode ^ id.hashCode;

  @override
  void sayBankHello() {
    calculateMoney(money);
  }

  void updateString(String name) {
    this.name = name;
  }
}

mixin BankMixin {
  void sayBankHello();
  void calculateMoney(int money) {
    print(money);
  }
}
