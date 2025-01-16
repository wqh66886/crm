import 'package:flutter/material.dart';
import 'package:frontend_system/core/configs/theme/app_theme.dart';
import 'package:frontend_system/core/constants/constants.dart';

class CommissionPage extends StatefulWidget {
  const CommissionPage({super.key});

  @override
  State<CommissionPage> createState() => _CommissionPageState();
}

class _CommissionPageState extends State<CommissionPage> {
  String _selectedMenuText = "";

  @override
  void initState() {
    _selectedMenuText = Constants.commissions.keys.first;
    super.initState();
  }

  void _onMenuSelected(String value) {
    setState(() {
      _selectedMenuText = value;
    });
  }

  List<Widget> _buildMenus() {
    var menus = <Widget>[];
    SizedBox box = SizedBox(
      height: 10,
    );
    for (var key in Constants.commissions.keys) {
      Widget menu = InkWell(
        onTap: () {
          _onMenuSelected(key);
        },
        child: Text(
          key,
          style: TextStyle(
            color: key == _selectedMenuText ? Colors.blue : Colors.black,
            fontSize: 12,
            fontWeight: FontWeight.bold,
          ),
        ),
      );
      menus.add(box);
      menus.add(menu);
    }
    return menus;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        children: [
          Drawer(
            backgroundColor: AppTheme.lightColorScheme.secondary,
            width: MediaQuery.of(context).size.width * .1,
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: _buildMenus(),
              ),
            ),
          ),
          VerticalDivider(
            color: Colors.grey.shade300,
          ),
          Expanded(child: Constants.commissions[_selectedMenuText]!),
        ],
      ),
    );
  }
}
