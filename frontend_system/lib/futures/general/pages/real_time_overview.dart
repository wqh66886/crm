import 'package:flutter/material.dart';

class RealTimeOverview extends StatefulWidget {
  const RealTimeOverview({super.key});

  @override
  State<RealTimeOverview> createState() => _RealTimeOverviewState();
}

class _RealTimeOverviewState extends State<RealTimeOverview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
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
                        onTap: () {},
                        child: Text("今日"),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Text("最近一周"),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Text("最近一月"),
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Card(
                        color: Colors.white,
                        child: SizedBox(
                          width: 100,
                          height: 80,
                          child: Text("新增客户"),
                        ),
                      ),
                    ],
                  ),
                  Row(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
