
import 'package:flutter/material.dart';

class RekeningProvider extends ChangeNotifier {

  int _saldo = 0;
  int get saldo => _saldo;

  void increment(int value) {
    _saldo += value;
    notifyListeners();
  }

  void decrement(int value) {
    if ((_saldo - value) > 0) {
      _saldo -= value;
    } else {
      _saldo = 0;
    }
    notifyListeners();
  }

  void reset() {
    _saldo = 0;
    notifyListeners();
  }
}