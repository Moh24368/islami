import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:islami/app_theme.dart';

class ActiveNavBarIcon extends StatelessWidget {
  String iconName;

  ActiveNavBarIcon({required this.iconName});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFF20202099).withValues(alpha: 0.6),borderRadius: BorderRadius.circular(66)
      ),
      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 6),
      child: SvgPicture.asset(
        colorFilter: ColorFilter.mode(AppTheme.white, BlendMode.srcIn),
        "assets/icons/$iconName.svg",
        width: 27,
        height: 27,
        fit: BoxFit.scaleDown,
      ),
    );
  }
}
