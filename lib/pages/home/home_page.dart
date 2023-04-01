import 'package:flutter/material.dart';
import 'package:smart_home/controller/home_page_controller.dart';
import 'package:smart_home/device_tile.dart';
import 'package:smart_home/repositories/device_repositories.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final homePageController = HomePageController();
  final deviceRepositories = DeviceRepositories();
  @override
  void initState() {
    homePageController.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              color: Colors.yellow,
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 16,
                  right: 16,
                  left: 16,
                  bottom: 8,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          'Hi, Dimest',
                          style: TextStyle(color: Colors.black),
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.green,
                          radius: 20,
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
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
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: const [
                              Text('A total of 4 devices'),
                              Text('Living Room')
                            ],
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.menu),
                          )
                        ],
                      ),
                      const SizedBox(height: 5),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: GridView.builder(
                            
                            itemCount: deviceRepositories.devicesList.length,
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              crossAxisSpacing: 12,
                              mainAxisSpacing: 10
                            ),
                            itemBuilder: (context, i) {
                              final data = deviceRepositories.devicesList;
                              return DeviceTile(
                                nameDevice:data[i].name,
                                icon: data[i].icon,
                                functionName: data[i].function,
                                valueSwitch: homePageController.isActive,
                                color: homePageController.isActive
                                    ? data[i].color
                                    : Colors.white,
                                onTap: homePageController.activeDevice,
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
