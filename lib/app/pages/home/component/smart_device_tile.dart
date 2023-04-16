import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../model/device_model.dart';
import '../../../utils/theme/app_color.dart';

class SmartDeviceTile extends StatelessWidget {
  const SmartDeviceTile({
    Key? key,
    required this.deviceModel,
    required this.onTap,
  }) : super(key: key);
  final DeviceModel? deviceModel;
  final bool? Function(bool? value) onTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 125,
      height: 200,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: deviceModel!.isActive ? deviceModel!.color : AppColor.white,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            deviceModel!.image,
            width: 50,
            color: deviceModel!.isActive && deviceModel!.function != 'Sound'
                ? Colors.white
                : deviceModel!.isActive && deviceModel!.function == 'Sound'
                    ? null
                    : null,
          ),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: '${deviceModel!.function}\n',
                  style: TextStyle(
                    color: deviceModel!.isActive &&
                            deviceModel!.function != 'Sound'
                        ? Colors.white
                        : deviceModel!.isActive &&
                                deviceModel!.function == 'Sound'
                            ? AppColor.black
                            : AppColor.black,
                  ),
                ),
                TextSpan(
                  text: deviceModel!.name,
                  style: TextStyle(
                    color: deviceModel!.isActive &&
                            deviceModel!.function != 'Sound'
                        ? Colors.white
                        : deviceModel!.isActive &&
                                deviceModel!.function == 'Sound'
                            ? AppColor.black
                            : AppColor.black,
                  ),
                ),
              ],
            ),
          ),
          Transform.scale(
            scale: 0.8,
            child: CupertinoSwitch(
              trackColor: Colors.black,
              activeColor: deviceModel!.isActive &&
                      deviceModel!.function != 'Sound'
                  ? AppColor.white.withOpacity(0.15)
                  : deviceModel!.isActive && deviceModel!.function == 'Sound'
                      ? AppColor.black
                      : AppColor.black,
              value: deviceModel!.isActive,
              onChanged: onTap,
            ),
          ),
        ],
      ),
    );
  }
}
