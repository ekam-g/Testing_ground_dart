import 'dart:io';

cli() {
  dynamic input;
  List numToAdd = [0.0, 0.0];

  print('Welcome to Dart CLI');
  while (true) {
    input = stdin.readLineSync();
    switch (input) {
      case 'exit':
        return 0;
        break;

      case 'add':
        print('Enter two numbers to add');
        for (int x = 0; x < 2; x++) {
          try {
            numToAdd[x] = double.parse(stdin.readLineSync());
          } catch (e) {
            print(e);
            x--;
          }
        }
        numToAdd[0] += numToAdd[1];
        print(numToAdd[0]);
        break;

      default:
        print('Invalid input\n'
            'here are the valid commands:\n'
            'add - adds two numbers\n'
            'exit - exits the program');
        break;
    }
  }
}
