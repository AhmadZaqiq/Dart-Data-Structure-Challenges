import 'package:stack/stack.dart';

void fillStack(Stack<dynamic> stack, List<dynamic> list) {
  while (list.isNotEmpty) {
    stack.push(list.removeAt(0));
  }
}

void reverseStackToList(Stack<dynamic> stack, List<dynamic> list) {
  while (stack.isNotEmpty) {
    list.add(stack.pop());
  }
}

void printList(List<dynamic> list) {
  for (var element in list) {
    print(element);
  }
}

void main(List<String> arguments) {
  Stack<dynamic> stack = Stack();
  List<dynamic> list = [1, 2, 3, 4, 5];

  fillStack(stack, list);

  reverseStackToList(stack, list);

  printList(list);
}
