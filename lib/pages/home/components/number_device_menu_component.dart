import 'package:flutter/material.dart';
import 'package:smart_home/theme/app_typography.dart';

class NumberOfDeviceMenuComponent extends StatelessWidget {
  const NumberOfDeviceMenuComponent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 6,
        right: 2,
        left: 8,
        bottom: 6,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'A total of 4 devices',
                style: AppTypography.bodyTextNormal(context),
              ),
              Text(
                'Living Room',
                style: AppTypography.bodyTextNormal(context),
              )
            ],
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.menu,
            ),
          )
        ],
      ),
    );
  }
}
