//boolean (bool)
//if-else
//length
//isEmpty

void main() {
  bool isCustomerRich = true;
  print(isCustomerRich);

  int money = 100;
  if (money > 50) {
    print('You are rich!');
  } else {
    print('You are poor!');
  }

  money -= 51;
  if (money > 50) {
    print('You are rich!');
  } else {
    print('You are poor');
  }

  print('--------------------');

  int newCustomerMoney = 10;
  int bankingCost = 5;

  if (newCustomerMoney >= bankingCost) {
    print('Hello, you can make trade');
    newCustomerMoney -= bankingCost;
  } else if (newCustomerMoney > 0) {
    print('Please wait turn');
  } else {
    print('Fuck off!!!');
  }

  print('-------------------');

  final String alexCompany = 'alex';
  final String frankCompany = 'frank';
  final String georgeCompany = 'george';
  final String jackCompany = 'jack';
  final String xCompany = 'x';
  final String xyCompany = 'xy';

  int companyLength = 10;
  String result = '';

  if (alexCompany.length > companyLength) {
    result += alexCompany + ' ';
  }
  if (frankCompany.length > companyLength) {
    result += frankCompany + ' ';
  }
  if (georgeCompany.length > companyLength) {
    result += georgeCompany + ' ';
  }
  if (jackCompany.length > companyLength) {
    result += jackCompany + ' ';
  }
  if (xyCompany.length > companyLength) {
    result += xyCompany + ' ';
  }
  if (xCompany.length > companyLength) {
    result += xCompany + ' ';
  }

  if (result.length <= 1) {
    print('We cant find bro!');
  } else {
    print(result);
  }

  print('--------------------');

  if (result.isEmpty) {
    print('We cant find bro!');
  } else {
    print(result);
  }
}
