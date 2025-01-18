import 'package:stack/stack.dart';

bool isBalanced(String input) {
  Stack<String> stack = Stack<String>();

  for (var char in input.split('')) {
    if (char == '(' || char == '{' || char == '[') {
      stack.push(char);
    } else if (char == ')' || char == '}' || char == ']') {
      if (stack.isEmpty) {
        return false;
      }

      String lastOpen = stack.pop();

      if ((char == ')' && lastOpen != '(') ||
          (char == '}' && lastOpen != '{') ||
          (char == ']' && lastOpen != '[')) {
        return false;
      }
    }
  }

  return stack.isEmpty;
}

void main() {
  String first = '{[()]}';
  String second = '{[)]}';
  String third = '{{[[(())]]}}';
  String fourth = '[](){}';
  String fifth = '{{([)]';
  String sixth = '[[[]]](()()){{}}';

  print(isBalanced(first));
  print(isBalanced(second));
  print(isBalanced(third));
  print(isBalanced(fourth));
  print(isBalanced(fifth));
  print(isBalanced(sixth));
}
