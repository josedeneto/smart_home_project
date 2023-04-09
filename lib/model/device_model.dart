// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/cupertino.dart';

class DeviceModel {
  String name;
  String image;
  Color color;
  String function;
  bool isActive;
  DeviceModel({required this.name, required this.image, required this.color, required this.function, required this.isActive});

  DeviceModel copyWith({
    String? name,
    String? image,
    Color? color,
    String? function,
    bool? isActive,
  }) {
    return DeviceModel(
      name: name ?? this.name,
      image: image ?? this.image,
      color: color ?? this.color,
      function: function ?? this.function,
      isActive: isActive ?? this.isActive,
    );
  }
}
