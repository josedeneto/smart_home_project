import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smart_home/repositories/device_repositories.dart';
import 'package:smart_home/theme/app_color.dart';

import 'components/device_tile.dart';
import 'components/header_components.dart';
import 'components/number_device_menu_component.dart';
import 'controller/home_page_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  bool active = false;
   
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
     final double itemHeight = (size.height - kToolbarHeight - 130) / 2;
    final double itemWidth = size.width / 2;
    return Scaffold(
      backgroundColor: AppColor.scaffoldBackground,
      body: SafeArea(
        child: Stack(
          children: [
            const HeaderComponent(),
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
                        color: Color.fromARGB(
                          255,
                          230,
                          229,
                          229,
                        ),
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
                      const NumberOfDeviceMenuComponent(),
                      const SizedBox(height: 5),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Consumer<DeviceRepositories>(
                            builder: (context, deviceRepo, child) {
                              final deviceController = context.watch<HomePageController>();
                              return GridView.builder(
                                gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  crossAxisSpacing: 13,
                                  mainAxisSpacing: 16,
                                  childAspectRatio: (itemWidth/itemHeight)
                                ),
                                itemCount: deviceRepo.devicesList.length,
                                itemBuilder: (_, i) {
                                  final deviceModel = deviceRepo.devicesList[i];
                                  return DeviceTile(
                                    color: deviceModel.isActive ? deviceModel.color : Colors.white,
                                    nameDevice: deviceModel.name,
                                    image: deviceModel.image,
                                    onTap: (active) => deviceController.activeDevice(active, devices: deviceRepo, index: i),
                                    functionName: deviceModel.function,
                                    valueSwitch: deviceModel.isActive,
                                  );
                                },
                              );
                            },
                          ),
                        ),
                      )
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
