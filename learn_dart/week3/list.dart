//list
//sort(),add(),insert(),reserved,toList(),clear(),generate,contains
//dynamic

void main() {
  List<int> moneys = [100, 200, 300];

  print('First customer money: ${moneys[0]}');

  print('---------------------');

  moneys.sort();
  moneys.add(400);
  moneys.insert(4, 500);
  moneys.insert(0, 0);
  //moneys.reversed.toList().add(0);

  print(moneys);

  print('-------------------');

  final List<int> newMoney = [100, 200, 300];

  newMoney.add(600);
  newMoney.clear();
  //newMoney.reversed.toList(); //new list
  print(newMoney);

  print('--------------------');

  List<double> customerMoney = List.generate(100, (index) {
    return index + 5;
  });
  customerMoney.add(100);
  // print(customerMoney);

  List<int> customerMoney2 = [10, 30, 50, 100, 200, 275, 300];
  customerMoney2.sort();

  for (var i = 0; i < customerMoney2.length; i++) {
    print('Customers money: ${customerMoney2[i]}');
    if (customerMoney2[i] < 50) {
      print('BYE!');
    } else {
      print('Credit ready!');
    }
  }

  print('-------------------');

  for (var i = customerMoney2.length - 1; i >= 0; i--) {
    print('Customers money: ${customerMoney2[i]}');
    if (customerMoney2[i] < 50) {
      print('BYE!');
    } else {
      print('Credit ready!');
    }
  }

  List<dynamic> random = [1, 'Tony', 2.0, 6, true]; //not recomended
  print(random);

  for (var item in random) {
    print(item);
  }

  random.contains('Tony');

  for (var item in random) {
    if (item == 'Tony') {
      print(random[1]);
    }
  }
}
