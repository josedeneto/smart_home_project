

import '../utils/images/app_image.dart';
import '../utils/theme/app_color.dart';

class DeviceRepository {
  final List<dynamic> _listDevice = [
    [
      'Smart',
      'Light',
      AppImage.spotlight,
      AppColor.red,
      false,
    ],
    [
      'Smart',
      'AC',
      AppImage.ac,
      AppColor.indigo,
      false,
    ],
    [
      'Smart',
      'TV',
      AppImage.tv,
      AppColor.yellow,
      false,
    ],
    [
      'Smart',
      'Sound',
      AppImage.speaker,
      AppColor.grey,
      false,
    ],
  ];

  List<dynamic> get listDevice => _listDevice;
}
