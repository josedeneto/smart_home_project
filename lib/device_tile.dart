import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smart_home/controller/home_page_controller.dart';

class DeviceTile extends StatefulWidget {
  const DeviceTile(
      {Key? key,
      this.functionName = 'Smart',
      required this.nameDevice,
      required this.icon,
      this.valueSwitch = false,
      this.color = Colors.white,
      required this.onTap})
      : super(key: key);
  final String functionName;
  final String nameDevice;
  final IconData icon;
  final bool valueSwitch;
  final Color color;
  final bool? Function(bool? value) onTap;

  @override
  State<DeviceTile> createState() => _DeviceTileState();
}

class _DeviceTileState extends State<DeviceTile> {
  final homePageController = HomePageController();
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      height: 250,
      decoration: BoxDecoration(
        color: widget.color,
        borderRadius: BorderRadius.circular(15),
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            Icons.radio_rounded,
            color: homePageController.isActive ? Colors.white : Colors.black,
          ),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: '${widget.functionName}\n',
                  style: TextStyle(
                    color: homePageController.isActive
                        ? Colors.white
                        : Colors.black,
                  ),
                ),
                TextSpan(
                  text: widget.nameDevice,
                  style: TextStyle(
                    color: homePageController.isActive
                        ? Colors.white
                        : Colors.black,
                  ),
                ),
              ],
            ),
          ),
          CupertinoSwitch(
            trackColor: !homePageController.isActive
                ? Colors.black
                : Colors.transparent,
            activeColor: Colors.indigoAccent,
            value: widget.valueSwitch,
            onChanged: widget.onTap,
          ),
        ],
      ),
    );
  }
}
