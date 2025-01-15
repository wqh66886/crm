import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:frontend_system/core/configs/theme/app_colors.dart';
import 'package:frontend_system/core/configs/theme/app_theme.dart';
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
        backgroundColor: AppTheme.lightColorScheme.secondary,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(1.0), // 设置底部线条的高度
          child: Container(
            color: Colors.grey.shade300, // 设置线条颜色
            height: 1.0, // 设置线条的高度
          ),
        ),
        title: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Tooltip(
                      message: "通知",
                      child: SizedBox(
                        width: 25,
                        height: 25,
                        child: Stack(
                          children: [
                            Icon(CupertinoIcons.bell),
                            Positioned(
                              right: 0,
                              child: Container(
                                width: 15,
                                height: 15,
                                decoration: BoxDecoration(
                                  color: Colors.redAccent,
                                  shape: BoxShape.circle,
                                ),
                                child: Center(
                                  child: Text(
                                    "1",
                                    style: TextStyle(
                                      color: Colors.white70,
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Tooltip(
                      message: "管理员",
                      child: SizedBox(
                        width: 30,
                        height: 30,
                        child: Image.asset("assets/images/avatar.png"),
                      ),
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
            backgroundColor: AppTheme.lightColorScheme.secondary,
            extended: false,
            labelType: NavigationRailLabelType.all,
            elevation: 1,
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
