import 'linked_list.dart';
import 'node.dart';

/// Challenge 2: Find the Middle Node
Node<E>? findMiddleNode<E>(LinkedList<E> list) {
  if (list.isEmpty) return null;

  var slow = list.head;
  var fast = list.head;

  // Fast pointer moves twice as fast as slow pointer
  while (fast?.next != null) {
    slow = slow!.next;
    fast = fast?.next?.next;
  }

  return slow;
}
