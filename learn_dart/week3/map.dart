//map
//Map<Key,Value>
//elementAt

void main() {
  Map<String, int> users = {
    'Alex': 20,
    'Tony': 1000,
    'Frank': 500,
  };

  print("Alex's money: ${users['Alex']}");

  print('-------------------');

  for (var item in users.keys) {
    print('${item}-${users[item]}');
  }

  print('-------------------');

  for (var i = 0; i <= users.length - 1; i++) {
    print('${users.keys.elementAt(i)} - ${users.values.elementAt(i)}');
  }
  print('--------------------');

  Map<String, List<int>> ARBank = {
    'Tony': [150, 200, 350]
  };

  ARBank['Frank'] = [1000, 200];
  ARBank['Steve'] = [100];

  for (var item in ARBank.keys) {
    for (var money in ARBank[item]!) {
      if (money > 200) {
        print('Your credit chance %65: $item');
      }
    }
  }

  for (var name in ARBank.keys) {
    int total = 0;
    for (var money in ARBank[name]!) {
      total = total + money;
    }
    print('$name total money: $total');
  }
}
