import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../pages/home/controller/home_page_controller.dart';
import '../pages/home/home_page.dart';
import '../repositories/device_repositories.dart';
import '../value.dart';

class AppSmart extends StatelessWidget {
  const AppSmart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => HomePageController(),
        ),
        ChangeNotifierProvider(
          create: (context) => DeviceRepositories(),
        )
      ],
      child: MaterialApp(
        title: 'Smart Home',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const Value(),
      ),
    );
  }
}
