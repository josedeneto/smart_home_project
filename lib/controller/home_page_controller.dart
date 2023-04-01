import 'package:flutter/cupertino.dart';

class HomePageController extends ChangeNotifier {
  bool isActive = false;

  bool? activeDevice(bool? value) {
    if(value!){
      isActive = value;
    }
    else if(!value){
      isActive = value;
    }
    notifyListeners();
    return null;
  }
  
}
