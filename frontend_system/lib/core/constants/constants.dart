import 'package:flutter/material.dart';
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
  static double window_initiate_width = 800;
  static double window_initiate_height = 600;
  static const Color textColor = Color(0xffcfd1d7);
  static const Color activeColor = Colors.blue;
  static const TextStyle labelStyle = TextStyle(color: textColor, fontSize: 11);
  static const TextStyle activeLabelStyle =
      TextStyle(color: activeColor, fontSize: 11);

  static List<NavigationRailDestination> destinations = const [
    NavigationRailDestination(
        icon: Icon(Icons.home_outlined), label: Text("概况")),
    NavigationRailDestination(
        icon: Icon(Icons.format_list_numbered_outlined), label: Text("代办")),
    NavigationRailDestination(
        icon: Icon(Icons.grading_outlined), label: Text("线索")),
    NavigationRailDestination(
        icon: Icon(Icons.person_outlined), label: Text("客户")),
    NavigationRailDestination(
        icon: Icon(Icons.data_saver_off_outlined), label: Text("商机")),
    NavigationRailDestination(
        icon: Icon(Icons.dvr_outlined), label: Text("订单")),
    NavigationRailDestination(
        icon: Icon(Icons.subject_outlined), label: Text("审批")),
    NavigationRailDestination(
        icon: Icon(Icons.dashboard_customize_outlined), label: Text("数据")),
    NavigationRailDestination(
        icon: Icon(Icons.settings_outlined), label: Text("设置")),
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
