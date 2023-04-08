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
    return Scaffold(
      backgroundColor: AppColor.scaffoldBackground,
      body: SafeArea(
        child: Stack(
          children: [
            const HeaderComponent(),
            Padding(
              padding: const EdgeInsets.only(
                top: 0,
                right: 16,
                left: 16,
                bottom: 12,
              ),
              child: Center(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.70,
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
                          child: Consumer(
                            builder: (context, value, child) {
                              final deviceRepo =
                                  context.read<DeviceRepositories>();
                              final deviceController =
                                  context.read<HomePageController>();
                              return GridView.builder(
                                gridDelegate:
                                    const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  crossAxisSpacing: 13,
                                  mainAxisSpacing: 16,
                                ),
                                itemCount: deviceRepo.devicesList.length,
                                itemBuilder: (_, i) {
                                  return DeviceTile(
                                    color: deviceController.isActive
                                        ? deviceRepo.devicesList[i].color
                                        : Colors.white,
                                    nameDevice: deviceRepo.devicesList[i].name,
                                    icon: deviceRepo.devicesList[i].icon,
                                    onTap: deviceController.activeDevice,
                                    functionName:
                                        deviceRepo.devicesList[i].function,
                                    valueSwitch: context
                                        .watch<HomePageController>()
                                        .isActive,
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
