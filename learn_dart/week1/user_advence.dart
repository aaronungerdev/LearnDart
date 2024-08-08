//var (dynamic)
//final: run when calling (depends on time) - const: run when compile codes
//final and const (you can't change to value)
//camelCase, PascalCase, UPPER_CASE, kebap-case

void main() {
  var userName = 'maria';
  print(userName);
  print('--------------------');

  // final int userMoney = 50;
  // userMoney += 50; you can't change to value

  //  const  int userMoney = 50;
  //  userMoney += 50; you can't change to value

  //Bank name
  //customer 1
  //customer 2
  //customer 3 (constant)
  //Subtract the second customer's money from the first customer's money

  const String bankName = 'ARBank';
  print(bankName);

  String customer = 'customer 1';
  const double customerMoney1 = 100.34;
  print(customer);

  String customer2 = 'customer 2';
  int customerMoney2 = 175;
  print(customer2);

  final customer3 = 'customer 3';
  final int customerMoney3 = 350;
  print('$customer3: $customerMoney3');
  int resultCustomerMoney = customerMoney2 - customerMoney1.toInt();

  print(
      'Subtracted the second customers money from the first customers money: $resultCustomerMoney');

  print('---------------');

  final int totalPlayer = 100;
  final double hour = 10.00;
  int playerCount1 = 20;
  int playerCount2 = 50;
  int remainingQuota = totalPlayer - (playerCount2 + playerCount1);
  print('Number of quotas remaining at $hour: $remainingQuota');
}
