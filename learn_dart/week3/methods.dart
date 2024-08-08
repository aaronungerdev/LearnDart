//methods
//null
//required

void main() {
  money();
  print('-------------------');

  money2(0);

  print('-------------------');

  int customerMoney3 = 20;
  money2(customerMoney3);

  print('-------------------');

  money3(3, 5);
  int customerMoney4 = 3;
  int range2 = 3;
  money3(customerMoney4, range2);

  print('-------------------');

  liraToDollar(600, 33);

  print('-------------------');

  print(liraToDollar2(800, 33));

  int result = liraToDollar2(250, 33);
  print(result);

  print('-------------------');

  print(liraToDollar3(100, dollarValue1: 35));
  print(liraToDollar3(100));

  print('-------------------');

  int result3 = liraToEuro(yourMoney2: 50);
  print(result3);

  print('-----------------------');

  print(sayHello('Frank'));
}

void money() {
  int customerMoney = 10;
  if (customerMoney > 0) {
    print('The customer has money.');
  } else {
    print('The customer hasnt money.');
  }
}

void money2(int customerMoney2) {
  if (customerMoney2 > 0) {
    print('The customer has money.');
  } else {
    print('The customer hasnt money.');
  }
}

void money3(int customerMoney2, int range) {
  if (customerMoney2 >= range) {
    print('The customer has money.');
  } else {
    print('The customer hasnt money.');
  }
}

void liraToDollar(int yourMoney, int dollarValue) {
  print('You have ${yourMoney / dollarValue} dolar');
}

int liraToDollar2(int yourMoney1, int dollarValue1) {
  return yourMoney1 ~/ dollarValue1;
}

int liraToDollar3(int yourMoney1, {int dollarValue1 = 34}) {
  return yourMoney1 ~/ dollarValue1;
}

//null
int liraToEuro({required yourMoney2, int dollarValue2 = 34}) {
  return yourMoney2 ~/ dollarValue2;
}

String sayHello(String name) {
  return 'Hello $name';
}
