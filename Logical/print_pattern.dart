import 'dart:io';

void main() {
  int n = 5;

  List<String> str = ['A', 'B', 'C', 'D', 'E'];

  for (int i = 1; i <= n; i++) {
    for (int j = 0; j < n - i; j++) {
      stdout.write(" ");
    }
    for (int j = 0; j < i; j++) {
      stdout.write(" ${str[j]}");
    }
    print("");
  }
}
