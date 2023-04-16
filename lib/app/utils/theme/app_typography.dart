import 'package:flutter/material.dart';

import 'app_color.dart';

class AppTypography {
  static TextStyle? bodyTextNormal(BuildContext context) {
    return Theme.of(context)
        .textTheme
        .bodyText1!
        .copyWith(fontWeight: FontWeight.w300);
  }

  static TextStyle? bodyTextBold(BuildContext context) {
    return Theme.of(context).textTheme.bodyText1!.copyWith(
          fontSize: 30,
          fontWeight: FontWeight.w800,
          color: AppColor.black,
        );
  }
}
