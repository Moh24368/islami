import 'package:flutter/material.dart';
import 'package:islami/tabs/hadeth_tab.dart';
import 'package:islami/tabs/quran_tab.dart';
import 'package:islami/tabs/radio_tab.dart';
import 'package:islami/tabs/sabha_tab.dart';
import 'package:islami/tabs/time_tab.dart';
import 'package:islami/widgets/active_nav_bar_icon.dart';
import 'package:islami/widgets/inactive_nav_bar_icon.dart';

class Homescreen extends StatefulWidget {
  static const String routeName = '/home';

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  int currentIndex = 0;

  List<Widget> tabs = [
    QuranTab(),
    HadethTab(),
    SabhaTab(),
    RadioTab(),
    TimeTab()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) {
          currentIndex = index;
          setState(() {});
        },
        items: [
          BottomNavigationBarItem(
            icon: InactiveNavBarIcon(iconName: "quran"),
            activeIcon: ActiveNavBarIcon(iconName: "quran"),
            label: "Quran",
          ),
          BottomNavigationBarItem(
            icon: InactiveNavBarIcon(iconName: "hadeth"),
            activeIcon: ActiveNavBarIcon(iconName: "hadeth"),
            label: "Hadeth",
          ),
          BottomNavigationBarItem(
            icon: InactiveNavBarIcon(iconName: "sebha"),
            activeIcon: ActiveNavBarIcon(iconName: "sebha"),
            label: "Sebha",
          ),
          BottomNavigationBarItem(
            icon: InactiveNavBarIcon(iconName: "radio"),
            activeIcon: ActiveNavBarIcon(iconName: "radio"),
            label: "Radio",
          ),
          BottomNavigationBarItem(
            icon: InactiveNavBarIcon(iconName: "time"),
            activeIcon: ActiveNavBarIcon(iconName: "time"),
            label: "Time",
          ),
        ],
      ),
    );
  }
}
