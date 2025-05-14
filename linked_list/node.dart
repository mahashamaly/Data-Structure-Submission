/// Node class for the linked list
class Node<T> {
  T value;
  Node<T>? next;

  Node(this.value, [this.next]);

  @override
  String toString() {
    if (next == null) return '$value';
    return '$value -> ${next.toString()}';
  }
}
