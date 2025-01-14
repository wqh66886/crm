import 'package:flutter/material.dart';
import 'package:frontend_system/core/configs/theme/app_colors.dart';
import 'package:frontend_system/core/constants/constants.dart';

class GeneralPage extends StatefulWidget {
  const GeneralPage({super.key});

  @override
  State<GeneralPage> createState() => _GeneralPageState();
}

class _GeneralPageState extends State<GeneralPage> {
  int _selectedIndex = 0;

  _onMenuSelected(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Drawer(
            width: MediaQuery.of(context).size.width * .1,
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  InkWell(
                    onTap: () {
                      _onMenuSelected(0);
                    },
                    child: Text(
                      "实时概况",
                      style: TextStyle(
                        color: _selectedIndex == 0 ? Colors.blue : Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  InkWell(
                    onTap: () {
                      _onMenuSelected(1);
                    },
                    child: Text(
                      "日历",
                      style: TextStyle(
                        color: _selectedIndex == 1 ? Colors.blue : Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          VerticalDivider(
            color: Colors.grey,
          ),
          Expanded(
            child: Constants.generals[_selectedIndex],
          ),
        ],
      ),
    );
  }
}
