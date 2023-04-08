// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/cupertino.dart';

class DeviceModel {
  String name;
  IconData icon;
  Color color;
  String function;
  bool isActive;
  DeviceModel({required this.name, required this.icon, required this.color, required this.function, required this.isActive});

  DeviceModel copyWith({
    String? name,
    IconData? icon,
    Color? color,
    String? function,
    bool? isActive,
  }) {
    return DeviceModel(
      name: name ?? this.name,
      icon: icon ?? this.icon,
      color: color ?? this.color,
      function: function ?? this.function,
      isActive: isActive ?? this.isActive,
    );
  }
}
