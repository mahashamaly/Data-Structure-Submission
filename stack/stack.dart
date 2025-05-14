class Stack<E> {
  final List<E> _storage = <E>[];

  /// Adds an element to the top of the stack
  void push(E element) => _storage.add(element);

  /// Removes and returns the top element of the stack
  E pop() {
    if (_storage.isEmpty) {
      throw StateError('Cannot pop from an empty stack');
    }
    return _storage.removeLast();
  }

  /// Returns the top element without removing it
  E get peek {
    if (_storage.isEmpty) {
      throw StateError('Cannot peek at an empty stack');
    }
    return _storage.last;
  }

  /// Returns whether the stack is empty
  bool get isEmpty => _storage.isEmpty;

  /// Returns the number of elements in the stack
  int get length => _storage.length;

  /// Returns a string representation of the stack
  @override
  String toString() {
    return '--- Top ---\n'
        '${_storage.reversed.join('\n')}'
        '\n-----------';
  }
}
