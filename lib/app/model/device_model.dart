import 'package:flutter/material.dart';

class DeviceModel {
  String name;
  String image;
  Color color;
  String function;
  bool isActive;
  DeviceModel({
    required this.name,
    required this.image,
    required this.color,
    required this.function,
    required this.isActive,
  });
}
