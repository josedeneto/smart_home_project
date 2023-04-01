import 'package:smart_home/model/device_model.dart';
import 'package:flutter/material.dart';

class DeviceRepositories {
  
  final List<DeviceModel> _devicesList = [];
  List<DeviceModel> get devicesList => _devicesList;

  DeviceRepositories() {
    _devicesList.addAll(
      [
        DeviceModel(
          name: 'Smart',
          function: 'Tv',
          icon: Icons.abc,
          isActive: true,
          color: Colors.red.shade800,
          
        ),
        DeviceModel(
          name: 'Smart',
          function: 'AC',
          icon: Icons.abc,
          isActive: true,
          color: Colors.blue.shade800,
        ),
        DeviceModel(
          name: 'Smart',
          function: 'Quarto',
          icon: Icons.abc,
          isActive: false,
          color: Colors.yellow.shade800,
        ),
        DeviceModel(
          name: 'Smart',
          function: 'Sla',
          icon: Icons.abc,
          isActive: false,
          color: Colors.green.shade800,
        ),
      ],
    );
  }
}
