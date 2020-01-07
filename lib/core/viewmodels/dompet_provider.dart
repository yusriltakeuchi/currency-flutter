
import 'package:flutter/material.dart';

class DompetProvider extends ChangeNotifier {

  int _money = 0;
  int get money => _money;

  void increment(int value) {
    _money += value;
    notifyListeners();
  }

  void decrement(int value) {
    if ((_money - value) > 0) {
      _money -= value;
    } else {
      _money = 0;
    }
    notifyListeners();
  }

  void reset() {
    _money = 0;
    notifyListeners();
  }
}