import 'package:flutter/material.dart';
import 'package:frontend_system/core/configs/theme/app_colors.dart';
import 'package:frontend_system/core/constants/constants.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  _onDestinationSelected(int value) {
    setState(() {
      _selectedIndex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 25,
                height: 25,
                child: Image.asset("assets/images/logo.png"),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: () {},
                    child: SizedBox(
                      width: 25,
                      height: 25,
                      child: Image.asset("assets/images/calendar.png"),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  InkWell(
                    onTap: () {},
                    child: SizedBox(
                      width: 25,
                      height: 25,
                      child: Image.asset("assets/images/document.png"),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  InkWell(
                    onTap: () {},
                    child: SizedBox(
                      width: 25,
                      height: 25,
                      child: Image.asset("assets/images/bell.png"),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Row(
                      children: [
                        SizedBox(
                          width: 30,
                          height: 30,
                          child: Image.asset("assets/images/avatar.png"),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text("管理员"),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      body: Row(
        children: [
          NavigationRail(
            backgroundColor: AppColors.backgroundColor,
            extended: false,
            labelType: NavigationRailLabelType.all,
            elevation: 1,
            useIndicator: false,
            destinations: Constants.destinations,
            selectedIndex: _selectedIndex,
            onDestinationSelected: _onDestinationSelected,
            unselectedIconTheme:
                const IconThemeData(color: Constants.textColor),
            selectedIconTheme:
                const IconThemeData(color: Constants.activeColor),
            unselectedLabelTextStyle: Constants.labelStyle,
            selectedLabelTextStyle: Constants.activeLabelStyle,
          ),
          Expanded(child: Constants.scaffolds[_selectedIndex]),
        ],
      ),
    );
  }
}
