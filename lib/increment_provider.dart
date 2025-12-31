import 'package:flutter/material.dart';

class Incrementprovider extends ChangeNotifier {
  List<int> numbers = [];
  int textfieldnum = 0;

  void add() {
    int last = numbers.isEmpty ? 1 : numbers.last + 1;

    numbers.add(last);
    notifyListeners();
  }

  void reset() {
    numbers.clear();
    notifyListeners();
  }

  void addtextnum(String multNum) {
    final convtnum = int.tryParse(multNum) ?? 1;

    textfieldnum = convtnum;
    notifyListeners();
  }
}
