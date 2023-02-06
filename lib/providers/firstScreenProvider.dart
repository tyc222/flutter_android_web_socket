import 'package:flutter/material.dart';

class FirstScreenProvider with ChangeNotifier {
  int _selectedIndex = 0;
  int get selectedIndex => _selectedIndex;
  void changeSelectedIndex(value) {
    _selectedIndex = value;
    notifyListeners();
  }
}
