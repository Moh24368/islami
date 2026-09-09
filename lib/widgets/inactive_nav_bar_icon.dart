import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class InactiveNavBarIcon extends StatelessWidget {
  String iconName;

  InactiveNavBarIcon({required this.iconName});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      "assets/icons/$iconName.svg",
      width: 27,
      height: 27,
      fit: BoxFit.scaleDown,
    );
  }
}