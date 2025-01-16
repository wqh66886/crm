import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:frontend_system/futures/approve/pages/approve_page.dart';
import 'package:frontend_system/futures/business_opportunity/pages/business_opportunity_page.dart';
import 'package:frontend_system/futures/client/pages/client_page.dart';
import 'package:frontend_system/futures/clue/pages/clue_page.dart';
import 'package:frontend_system/futures/commission/pages/commission_approve_page.dart';
import 'package:frontend_system/futures/commission/pages/commission_business_opportunity_page.dart';
import 'package:frontend_system/futures/commission/pages/commission_client_page.dart';
import 'package:frontend_system/futures/commission/pages/commission_clue_page.dart';
import 'package:frontend_system/futures/commission/pages/commission_page.dart';
import 'package:frontend_system/futures/commission/pages/commission_refund_page.dart';
import 'package:frontend_system/futures/commission/pages/commission_todo_page.dart';
import 'package:frontend_system/futures/commission/pages/expiring_contract_page.dart';
import 'package:frontend_system/futures/data/pages/data_page.dart';
import 'package:frontend_system/futures/general/pages/calendar_page.dart';
import 'package:frontend_system/futures/general/pages/general_page.dart';
import 'package:frontend_system/futures/general/pages/real_time_overview.dart';
import 'package:frontend_system/futures/order/pages/order_page.dart';
import 'package:frontend_system/futures/setting/pages/setting_page.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import 'SalesData.dart';

class Constants {
  static double window_initiate_width = 1200;
  static double window_initiate_height = 800;

  static List<LineSeries<SalesData, String>> getSeries(List<SalesData> data) {
    return <LineSeries<SalesData, String>>[
      LineSeries<SalesData, String>(
        animationDuration: 2500,
        dataSource: data,
        enableTooltip: true,
        xValueMapper: (SalesData sales, _) => sales.weekday,
        yValueMapper: (SalesData sales, _) => sales.weekSales,
        name: '新增客户数量',
        // Enable data label
        dataLabelSettings: DataLabelSettings(isVisible: true),
      ),
      LineSeries<SalesData, String>(
        animationDuration: 2500,
        dataSource: data,
        enableTooltip: true,
        xValueMapper: (SalesData sales, _) => sales.weekday,
        yValueMapper: (SalesData sales, _) => sales.sumSales,
        name: '客户总数量',
        // Enable data label
        dataLabelSettings: DataLabelSettings(isVisible: true),
      ),
    ];
  }

  static List<LineSeries<SalesData, String>> getMoney(List<SalesData> money) {
    return <LineSeries<SalesData, String>>[
      LineSeries<SalesData, String>(
        animationDuration: 2500,
        dataSource: money,
        enableTooltip: true,
        xValueMapper: (SalesData sales, _) => sales.weekday,
        yValueMapper: (SalesData sales, _) => sales.weekSales,
        name: '回款金额',
        dataLabelSettings: DataLabelSettings(isVisible: true),
      )
    ];
  }

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

  static Map<String, Widget> commissions = {
    "待联系线索": CommissionCluePage(),
    "待联系客户": CommissionClientPage(),
    "待联系商机": CommissionBusinessOpportunityPage(),
    "待联系审批": CommissionApprovePage(),
    "待联系回款": CommissionRefundPage(),
    "待处理任务": CommissionTodoPage(),
    "即将到期合同": ExpiringContractPage(),
  };
}
