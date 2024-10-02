import 'dart:ffi';
import 'dart:io';

void main() {
  // print("Enter the size of the array");
  // int? n = int.parse(stdin.readLineSync()!);

  print("Enter the input");
  String input = stdin.readLineSync()!;

  List num = input.split(', ').map(int.parse).toList();

  int left = 0;
  int right = num.length - 1;

  while (left < right) {
    int mid = (left + right) ~/ 2;

    if (num[mid] < right) {
      right = mid;
    } else {
      left = mid + 1;
    }
  }

  print("Minimum is ${num[left]}");

  // print(num);
}
