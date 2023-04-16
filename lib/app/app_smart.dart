import 'package:flutter/material.dart';
import 'package:smart_home/app/utils/theme/app_theme.dart';

import 'pages/home/home_page.dart';

class AppSmart extends StatelessWidget {
  const AppSmart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Smart Home',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.theme,
      home: const HomePage(),
    );
  }
}
