import 'stack.dart';

/// Challenge 2: Balance the Parentheses
bool checkBalancedParentheses(String text) {
  final Stack<String> stack = Stack<String>();

  for (int i = 0; i < text.length; i++) {
    String char = text[i];

    if (char == '(') {
      stack.push(char);
    } else if (char == ')') {
      if (stack.isEmpty) {
        return false; // Closing parenthesis without a matching opening one
      }
      stack.pop();
    }
  }

  return stack.isEmpty; // True if all parentheses were matched
}
