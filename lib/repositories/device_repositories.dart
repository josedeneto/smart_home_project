import 'package:flutter/material.dart';
import 'package:smart_home/model/device_model.dart';
import 'package:smart_home/theme/app_color.dart';

class DeviceRepositories extends ChangeNotifier {
  final List<DeviceModel> _devicesList = [];
  List<DeviceModel> get devicesList => _devicesList;

  DeviceRepositories() {
    _devicesList.addAll(
      [
        DeviceModel(
          name: 'Smart',
          function: 'Tv',
          image: 'assets/image/spotlight.png',
          color: AppColor.red,
          isActive: true,
        ),
        DeviceModel(
            name: 'Smart',
            function: 'AC',
            image: 'assets/image/Ac.png',
            color: AppColor.indigo,
            isActive: true),
        DeviceModel(
            name: 'Smart',
            function: 'TV',
            image: 'assets/image/monitor.png',
            color: AppColor.yellow,
            isActive: false),
        DeviceModel(
            name: 'Smart',
            function: 'Sound',
            image: 'assets/image/speaker.png',
            color: AppColor.grey,
            isActive: false),
      ],
    );
  }
}
