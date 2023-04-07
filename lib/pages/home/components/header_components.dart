import 'package:flutter/material.dart';
import 'package:smart_home/theme/app_typography.dart';

class HeaderComponent extends StatelessWidget {
  const HeaderComponent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Padding(
        padding: const EdgeInsets.only(
          top: 16,
          right: 20,
          left: 20,
          bottom: 8,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Hi, Dimest',
                  style: AppTypography.bodyTextBold(context),
                ),
                const CircleAvatar(
                  backgroundImage: AssetImage('assets/image/img_1.jpg',),
                  radius: 20,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
