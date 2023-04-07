import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../controller/home_page_controller.dart';


class DeviceTile extends StatefulWidget {
  const DeviceTile(
      {Key? key,
      this.functionName = 'Smart',
      required this.nameDevice,
      required this.icon,
      this.valueSwitch = false,
      this.color,
      required this.onTap})
      : super(key: key);
  final String functionName;
  final String nameDevice;
  final IconData icon;
  final bool valueSwitch;
  final Color? color;
  final bool? Function(bool? value) onTap;

  @override
  State<DeviceTile> createState() => _DeviceTileState();
}

class _DeviceTileState extends State<DeviceTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 125,
      height: 200,
      decoration: BoxDecoration(
        color: widget.color,
        borderRadius: BorderRadius.circular(15),
      ),
      padding: const EdgeInsets.all(16),
      child: Consumer(
        builder: (context, value, child) => Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              Icons.radio_rounded,
              color: context.watch<HomePageController>().isActive
                  ? Colors.white
                  : Colors.black,
            ),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: '${widget.functionName}\n',
                    style: TextStyle(
                      color: context.watch<HomePageController>().isActive
                          ? Colors.white
                          : Colors.black,
                    ),
                  ),
                  TextSpan(
                    text: widget.nameDevice,
                    style: TextStyle(
                      color: context.watch<HomePageController>().isActive
                          ? Colors.white
                          : Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            CupertinoSwitch(
              trackColor: !context.watch<HomePageController>().isActive
                  ? Colors.black
                  : Colors.brown,
              activeColor: Colors.indigoAccent,
              value: widget.valueSwitch,
              onChanged: widget.onTap,
            ),
          ],
        ),
      ),
    );
  }
}
