import 'package:flutter/material.dart';

import '../../model/device_model.dart';
import '../../repository/device_repository.dart';
import '../../utils/images/app_image.dart';
import '../../utils/theme/app_color.dart';
import 'component/header_components.dart';
import 'component/smart_Device_Tile.dart';
import 'component/total_device_menu_compenent.dart.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final deviceRepo = DeviceRepository();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final double itemHeight = (size.height - kToolbarHeight - 130) / 2;
    final double itemWidth = size.width / 2;

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            const HeaderComponent(),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(
                top: 25,
                right: 16,
                left: 16,
                bottom: 6,
              ),
              child: Align(
                alignment: Alignment.center,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.75,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: const [
                      BoxShadow(
                        color: AppColor.shadow,
                        blurRadius: 1,
                        spreadRadius: 2,
                        blurStyle: BlurStyle.outer,
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const TotalDeviceMenuComponent(),
                      const SizedBox(height: 5),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: GridView.builder(
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              crossAxisSpacing: 13,
                              mainAxisSpacing: 16,
                              childAspectRatio: (itemWidth / itemHeight),
                            ),
                            itemCount: deviceRepo.listDevice.length,
                            itemBuilder: (_, d) {
                              final device = deviceRepo.listDevice[d];
                              return SmartDeviceTile(
                                deviceModel: DeviceModel(
                                    name: device[0],
                                    image: device[1] == 'Sound' && device[4]
                                        ? AppImage.aud
                                        : device[2],
                                    color: device[3],
                                    function: device[1],
                                    isActive: device[4]),
                                onTap: (value) {
                                  setState(() {
                                    device[4] = value;
                                  });
                                  return true;
                                },
                              );
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
