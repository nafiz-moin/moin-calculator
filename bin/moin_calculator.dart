import 'dart:io';

void main() {
  print('===== MOIN\'S DART CALCULATOR =====');

  stdout.write('Enter first number: ');
  double? num1 = double.tryParse(stdin.readLineSync() ?? '');

  stdout.write('Enter operator (+, -, *, /): ');
  String operator = stdin.readLineSync() ?? '';

  stdout.write('Enter second number: ');
  double? num2 = double.tryParse(stdin.readLineSync() ?? '');

  if (num1 == null || num2 == null) {
    print('Invalid number! Please enter valid numbers.');
    return;
  }

  double result;

  switch (operator) {
    case '+':
      result = num1 + num2;
      break;

    case '-':
      result = num1 - num2;
      break;

    case '*':
      result = num1 * num2;
      break;

    case '/':
      if (num2 == 0) {
        print('Error: Cannot divide by zero!');
        return;
      }
      result = num1 / num2;
      break;

    default:
      print('Invalid operator!');
      return;
  }

  print('Result: $result');
}
