import 'package:flutter/material.dart';

class Names extends ChangeNotifier {
  List<String> _names = ['janbas', 'inshad', 'ashid', 'amal'];

  List<String> get names => _names;

  void addName(String item) {
    _names.add(item);
    notifyListeners();
  }

  void delName(int index) {
    _names.removeAt(index);
    notifyListeners();
  }
}
