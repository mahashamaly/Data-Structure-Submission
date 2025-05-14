import 'node.dart';

/// Linked list implementation
class LinkedList<E> {
  Node<E>? head;
  Node<E>? tail;

  /// Returns whether the list is empty
  bool get isEmpty => head == null;

  /// Adds a value at the front of the list
  void push(E value) {
    head = Node(value, head);
    tail ??= head;
  }

  /// Adds a value at the end of the list
  void append(E value) {
    if (isEmpty) {
      push(value);
      return;
    }

    tail!.next = Node(value);
    tail = tail!.next;
  }

  /// Returns the node at the given index
  Node<E>? nodeAt(int index) {
    var currentNode = head;
    var currentIndex = 0;

    while (currentNode != null && currentIndex < index) {
      currentNode = currentNode.next;
      currentIndex++;
    }

    return currentNode;
  }

  /// Inserts a value after the given node
  Node<E> insertAfter(Node<E> node, E value) {
    if (node == tail) {
      append(value);
      return tail!;
    }

    node.next = Node(value, node.next);
    return node.next!;
  }

  /// Removes the value at the front of the list
  E? pop() {
    final value = head?.value;
    head = head?.next;
    if (isEmpty) {
      tail = null;
    }
    return value;
  }

  /// Removes the value after the given node
  E? removeAfter(Node<E> node) {
    final value = node.next?.value;
    if (node.next == tail) {
      tail = node;
    }
    node.next = node.next?.next;
    return value;
  }

  @override
  String toString() {
    if (isEmpty) return 'Empty list';
    return head.toString();
  }
}
