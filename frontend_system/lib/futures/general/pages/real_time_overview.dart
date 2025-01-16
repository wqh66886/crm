import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:frontend_system/core/configs/theme/app_theme.dart';
import 'package:frontend_system/core/constants/SalesData.dart';
import 'package:frontend_system/core/constants/constants.dart';
import 'package:frontend_system/futures/general/widgets/card_page.dart';
import 'package:frontend_system/futures/general/widgets/chart_page.dart';

class RealTimeOverview extends StatefulWidget {
  const RealTimeOverview({super.key});

  @override
  State<RealTimeOverview> createState() => _RealTimeOverviewState();
}

class _RealTimeOverviewState extends State<RealTimeOverview> {
  int _selectedIndex = 0;
  List<SalesData> data = [
    SalesData('周一', 35, 45),
    SalesData('周二', 28, 38),
    SalesData('周三', 34, 44),
    SalesData('周四', 32, 42),
    SalesData('周五', 44, 54),
    SalesData('周六', 47, 57),
    SalesData('周日', 49, 68),
  ];

  List<SalesData> money = [
    SalesData('周一', 3500, 0),
    SalesData('周二', 2800, 0),
    SalesData('周三', 3400, 0),
    SalesData('周四', 3200, 0),
    SalesData('周五', 4400, 0),
    SalesData('周六', 4700, 0),
    SalesData('周日', 4900, 0),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      "实时概况",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "跟新时间: ${DateTime.now().toIso8601String().split("T")[0]}",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _selectedIndex = 0;
                        });
                      },
                      child: Text(
                        "今日",
                        style: TextStyle(
                          color: _selectedIndex == 0
                              ? Colors.blueAccent
                              : Colors.black,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _selectedIndex = 1;
                        });
                      },
                      child: Text(
                        "最近一周",
                        style: TextStyle(
                          color: _selectedIndex == 1
                              ? Colors.blueAccent
                              : Colors.black,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _selectedIndex = 2;
                        });
                      },
                      child: Text(
                        "最近一月",
                        style: TextStyle(
                          color: _selectedIndex == 2
                              ? Colors.blueAccent
                              : Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Wrap(
              direction: Axis.horizontal,
              spacing: 15,
              runSpacing: 15,
              alignment: WrapAlignment.start,
              crossAxisAlignment: WrapCrossAlignment.start,
              runAlignment: WrapAlignment.start,
              children: [
                CardPage(title: "新增客户", flag: true, pct: 12.5, num: 560),
                CardPage(title: "新增联系人", flag: true, pct: 12.5, num: 560),
                CardPage(title: "新增商机", flag: true, pct: 12.5, num: 560),
                CardPage(title: "新增线索", flag: true, pct: 12.5, num: 560),
                CardPage(title: "新增合同", flag: true, pct: 12.5, num: 560),
                CardPage(title: "新增合同金额(元)", flag: true, pct: 12.5, num: 560),
                CardPage(title: "新增回款金额(元)", flag: true, pct: 12.5, num: 560),
                CardPage(title: "新增跟进记录", flag: true, pct: 12.5, num: 560),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "客户趋势",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    SizedBox(
                      width: double.maxFinite,
                      height: 350,
                      child: ChartPage(
                        series: Constants.getSeries(data),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "回款金额趋势(元)",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    SizedBox(
                      width: double.maxFinite,
                      height: 350,
                      child: ChartPage(
                        series: Constants.getMoney(money),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
