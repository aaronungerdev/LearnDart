//switch-case

void main() {
  final int classDegree = 2;
  bool isSucsess = false;
  const int sucsessValueHigh = 2;

  switch (classDegree) {
    case sucsessValueHigh:
      print('nice');
      isSucsess = true;
      break;
    case 1:
      print('enough');
      isSucsess = true;
      break;
    case 0:
      print('maybe');
      isSucsess = true;
      break;
    default:
      print('unsuccessful');
      isSucsess = false;
      break;
  }

  print('Sir your case: $isSucsess');
  print('--------------');

  final String name = 'dsff';
  bool isWho = false;

  switch (name) {
    case 'Jacob':
    case 'Alex':
      isWho = true;
      print('came $name $isWho');
    default:
      print('someone came: $isWho');
  }

  print('---------------------');

  final String customerName = 'Alex';
  const String name1 = 'Jacob';
  const String name2 = 'Alex';

  switch (customerName) {
    case name1:
    case name2:
      print('came $customerName');
    default:
      print('someone came: $customerName');
  }
}
