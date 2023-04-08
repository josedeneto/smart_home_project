import 'package:flutter/material.dart';
import 'package:smart_home/repositories/device_repositories.dart';

class HomePageController extends ChangeNotifier {
  bool isActive = false;

  bool? activeDevice(bool? active, {required DeviceRepositories devices, required int index}) {
    final device = devices.devicesList[index];
    devices.devicesList[index] = device.copyWith(isActive: active);
    notifyListeners();
    return true;
  }
}
