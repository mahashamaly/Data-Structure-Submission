import 'linked_list.dart';
import 'node.dart';

/// Challenge 1: Print in Reverse
void printLinkedListInReverse<E>(LinkedList<E> list) {
  _printNodesInReverse(list.head);
}

void _printNodesInReverse<E>(Node<E>? node) {
  if (node == null) return;

  _printNodesInReverse(node.next);
  print(node.value);
}
