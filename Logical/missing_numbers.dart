import 'dart:io';

void main() {
  print("enter the distinct numbers of the array");
  String str = stdin.readLineSync()!;

  int big = 0;
  bool flag = true;
  List<int> output = [];

  List<int> nums = str.split(', ').map(int.parse).toList();

  for (int i = 0; i < nums.length; i++) {
    if (nums[i] > big) {
      big = nums[i];
    }
  }

  // for (var i = 1; i < big; i++) {
  //   for (var j in nums) {
  //     if (j != i) {
  //       output.add(i);
  //       break;
  //     }
  //   }
  for (int i = 1; i < big; i++) {
    for (int j = 0; j < nums.length; j++) {
      if (nums[j] == i) {
        flag = false;
        break;
      }
    }
    if (flag) {
      output.add(i);
    } else {
      flag = true;
    }
  }

  print(output);
}
