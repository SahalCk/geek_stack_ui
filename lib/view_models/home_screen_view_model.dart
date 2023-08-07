import 'package:flutter/material.dart';

class HomeScreenViewModel extends ChangeNotifier {
  int selectedIndex = 0;

  void changeSelectedIndex(int index) {
    selectedIndex = index;
    notifyListeners();
  }
}
