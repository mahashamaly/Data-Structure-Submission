import 'linked_list.dart';

/// Challenge 4: Remove All Occurrences
void removeAllOccurrences<E>(LinkedList<E> list, E value) {
  // Handle removing from the head of the list
  while (list.head != null && list.head!.value == value) {
    list.head = list.head!.next;
  }

  // If list becomes empty
  if (list.head == null) {
    list.tail = null;
    return;
  }

  var current = list.head;

  // Handle removing from the rest of the list
  while (current!.next != null) {
    if (current.next!.value == value) {
      // If removing the tail, update tail reference
      if (current.next == list.tail) {
        list.tail = current;
      }
      current.next = current.next!.next;
    } else {
      current = current.next;
    }
  }
}
