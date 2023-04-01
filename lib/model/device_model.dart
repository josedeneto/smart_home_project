// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/cupertino.dart';

class DeviceModel {
  String name;
  IconData icon;
  bool isActive;
  Color color;
  String function;
  DeviceModel({
    required this.name,
    required this.icon,
    required this.isActive,
    required this.color,
    required this.function,
  });
}
