import 'package:flutter/material.dart';

class HomePageController extends ChangeNotifier {
  bool isActive = false;

  bool? activeDevice(bool? value) {
    isActive = value!;
    notifyListeners();
    return null;
  }
}
