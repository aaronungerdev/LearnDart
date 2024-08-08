//callBack
//@deprecated

void main(List<String> args) {
  User user = User(money: 15);

  user.calculateMoney((int result) {
    print(user.money);
    return result += 5;
  });
}

typedef CalculateCallBack = int Function(int data);

class User {
  @deprecated
  User({required this.money});
  int money;

  void calculateMoney(CalculateCallBack onComplete) {
    money += 5;
    final passData = onComplete(money);
    print(passData);
  }
}
