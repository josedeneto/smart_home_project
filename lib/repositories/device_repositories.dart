import 'package:smart_home/model/device_model.dart';
import 'package:flutter/material.dart';
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
          icon: Icons.abc,
          color: AppColor.red,
        ),
        DeviceModel(
          name: 'Smart',
          function: 'AC',
          icon: Icons.abc,
          color: AppColor.indigo,
        ),
        DeviceModel(
          name: 'Smart',
          function: 'Quarto',
          icon: Icons.abc,
          color: AppColor.yellow,
        ),
        DeviceModel(
          name: 'Smart',
          function: 'Sla',
          icon: Icons.abc,
          color: AppColor.green,
        ),
      ],
    );
  }
}
