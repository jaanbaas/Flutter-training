import 'dart:io';

void main() {
  bool flag = true;
  print("Enter the string");
  String str = stdin.readLineSync()!;

  print(firstNonRepeatingChar(str));

  // for (var i = 0; i < str.length; i++) {
  //   for (var j = 0; j < str.length; j++) {
  //     if (i != j) {
  //       if (str[j] == str[i]) {
  //         flag = false;
  //       }
  //       //  else {
  //       //   flag = false;
  //       // }
  //     }
  //   }
  //   if (flag) {
  //     print(i);
  //     exit(0);
  //   }
  // }
  // if (flag = false) {
  //   print("No unique character!");
  // }
}

int firstNonRepeatingChar(String s) {
  Map<String, int> charCount = {};

  for (int i = 0; i < s.length; i++) {
    String char = s[i];
    charCount[char] = (charCount[char] ?? 0) + 1;
  }

  for (int i = 0; i < s.length; i++) {
    if (charCount[s[i]] == 1) {
      return i;
    }
  }
  return -1;
}
