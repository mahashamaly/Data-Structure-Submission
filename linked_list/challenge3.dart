import 'linked_list.dart';
import 'node.dart';

/// Challenge 3: Reverse a Linked List
void reverseLinkedList<E>(LinkedList<E> list) {
  if (list.isEmpty || list.head?.next == null) return;

  Node<E>? previous = null;
  var current = list.head;
  list.tail = list.head;

  while (current != null) {
    var next = current.next;
    current.next = previous;
    previous = current;
    current = next;
  }

  list.head = previous;
}
