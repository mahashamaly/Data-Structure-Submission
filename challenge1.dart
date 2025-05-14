import 'stack.dart';

/// Challenge 1: Reverse a List
void printListInReverse<E>(List<E> list) {
  final Stack<E> stack = Stack<E>();

  // Push all elements onto the stack
  for (E element in list) {
    stack.push(element);
  }

  // Pop and print each element
  while (!stack.isEmpty) {
    print(stack.pop());
  }
}
