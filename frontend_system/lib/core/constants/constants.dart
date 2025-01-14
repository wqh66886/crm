import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:frontend_system/core/configs/theme/app_theme.dart';
import 'package:frontend_system/futures/approve/pages/approve_page.dart';
import 'package:frontend_system/futures/business_opportunity/pages/business_opportunity_page.dart';
import 'package:frontend_system/futures/client/pages/client_page.dart';
import 'package:frontend_system/futures/clue/pages/clue_page.dart';
import 'package:frontend_system/futures/commission/pages/commission_page.dart';
import 'package:frontend_system/futures/data/pages/data_page.dart';
import 'package:frontend_system/futures/general/pages/calendar_page.dart';
import 'package:frontend_system/futures/general/pages/general_page.dart';
import 'package:frontend_system/futures/general/pages/real_time_overview.dart';
import 'package:frontend_system/futures/order/pages/order_page.dart';
import 'package:frontend_system/futures/setting/pages/setting_page.dart';

class Constants {
  static double window_initiate_width = 1200;
  static double window_initiate_height = 800;
  static const Color textColor = Colors.black;
  static const Color activeColor = Colors.blue;
  static TextStyle labelStyle = TextStyle(
    color: textColor,
    fontSize: 12,
    fontWeight: FontWeight.bold,
  );
  static const TextStyle activeLabelStyle = TextStyle(
    color: activeColor,
    fontSize: 12,
    fontWeight: FontWeight.bold,
  );

  static List<NavigationRailDestination> destinations = const [
    NavigationRailDestination(
        icon: Icon(CupertinoIcons.home), label: Text("概况")),
    NavigationRailDestination(
        icon: Icon(CupertinoIcons.list_number), label: Text("代办")),
    NavigationRailDestination(
        icon: Icon(CupertinoIcons.doc_checkmark), label: Text("线索")),
    NavigationRailDestination(
        icon: Icon(CupertinoIcons.person_2_alt), label: Text("客户")),
    NavigationRailDestination(
        icon: Icon(CupertinoIcons.doc_text_search), label: Text("商机")),
    NavigationRailDestination(
        icon: Icon(CupertinoIcons.doc_text), label: Text("订单")),
    NavigationRailDestination(
        icon: Icon(CupertinoIcons.alt), label: Text("审批")),
    NavigationRailDestination(
        icon: Icon(CupertinoIcons.desktopcomputer), label: Text("数据")),
    NavigationRailDestination(
        icon: Icon(CupertinoIcons.settings_solid), label: Text("设置")),
  ];
  static List<Widget> scaffolds = const [
    GeneralPage(),
    CommissionPage(),
    CluePage(),
    ClientPage(),
    BusinessOpportunityPage(),
    OrderPage(),
    ApprovePage(),
    DataPage(),
    SettingPage(),
  ];

  static List<Widget> generals = const [
    RealTimeOverview(),
    CalendarPage(),
  ];
}
