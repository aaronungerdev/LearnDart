//future

void main() {
  // print('a');
  Stream<int> bankMoneys = Stream.empty();
  bankMoneys.listen((event) {
    print(event);
  });

  // Future.forEach([1, 2, 3, 4, 5], (int element) async {
  //   await Future.delayed(Duration(seconds: 2));
  //   print('Done! $element');
  // });
  // Future.delayed(Duration(seconds: 2));
  // print('a');

  print('Hello1');
  Future.delayed(Duration(seconds: 2)).whenComplete(() {
    print('Hello2');
  });
  print('Hello3');
  Future.delayed(Duration(seconds: 1)).whenComplete(() {
    print('Hello4');
  });
}

Stream<int> dataAddBankMoney(int retryCount, int money) async* {
  int _localRetry = 0;
  await Future.delayed((Duration(seconds: 1)));
  while (_localRetry < retryCount) {
    _localRetry++;
    yield money + 5;
  }
}
