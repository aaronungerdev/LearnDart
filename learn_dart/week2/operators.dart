//operators
//num
//%, isOdd, isEven
//debugging, breakpoint

void main() {
  int money = 10;

  money = money + 1;
  money += 1;
  money++;
  money--;

  String name1 = 'Alex';
  String name2 = 'Frank';

  print(name1 + name2);

  if (name1 == 'Alex') {}
  if (name1 != 'Alex') {}
  if (name1.length >= 'Alex'.length) {}
  if (name1.length <= 'Alex'.length) {}
  if (name1.length > 'Alex'.length) {}
  if (name1.length < 'Alex'.length) {}

  print('-------------------');

  final int appleMoney = 23;
  final num discount = 7.5;
  final int lastPrice = appleMoney - (appleMoney ~/ discount);

  print('Last price: $lastPrice');

  print('--------------------');

  int number = 11;
  bool isEven = false;

  if (number % 2 == 0) {
    print('$number is even');
    isEven = true;
    print(isEven);
  } else if (number % 2 == 1) {
    print('$number is odd');
    print(isEven);
  }

  print('---------------------');

  print(number.isOdd);
  print(number.isEven);
}
