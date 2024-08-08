//using ${x+z}
//-=20, +=50 different using
// userMoney ~/ 5;

void main() {
//customer name
//customer money
//say 'your money: xx dolar'
//It came us bank. We going to add 20 dolar it bank account

  String customerName = 'Alex';
  int customerMoney = 51;
  int totalMoney = customerMoney + 20;

  customerMoney = customerMoney ~/ 2;
  print(customerMoney);

  print(
      'Welcome $customerName, have been added 20 dolar your account. Current amount in your account: ${20 + 51} dolar.');
  print(
      'Welcome $customerName, have been added 20 dolar your account. Current amount in your account: $totalMoney dolar.');

  print('--------------------------');

  //int loseMoney = totalMoney - 30;
  int loseMoney = totalMoney -= 30;

  print('Yout money lost value. Current amount in your account: $loseMoney');

  double alexMoney = 26.8;
  alexMoney = alexMoney / 2;
  print('Sir Alex, Current amount in your account: $alexMoney');

  print('-------------------------');

  String customerName2 = 'Frank';
  int customerMoney2 = 205;
  int lastMoney = customerMoney2 ~/ 2;

  print(
      'Welcome $customerName2, Current amount in your bank account: $lastMoney');
}
