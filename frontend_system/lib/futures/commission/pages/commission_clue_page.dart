import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:frontend_system/futures/commission/widgets/dropmenu_widget.dart';

class CommissionCluePage extends StatefulWidget {
  const CommissionCluePage({super.key});

  @override
  State<CommissionCluePage> createState() => _CommissionCluePageState();
}

class _CommissionCluePageState extends State<CommissionCluePage>
    with SingleTickerProviderStateMixin {
  List<String> clues = ["熟人", "客户", "公司"];

  List<String> searches = ["手机号", "电话", "邮箱"];

  final textController = TextEditingController();
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "待联系线索",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Divider(),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              "线索来源",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            DropMenuWidget(
                              hintText: "线索来源",
                              data: clues,
                              onChanged: (value) {},
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Text(
                              "精准查询",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            DropMenuWidget(
                              hintText: "请选择",
                              data: searches,
                              onChanged: (value) {},
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            SizedBox(
                              width: 250,
                              height: 40,
                              child: TextFormField(
                                controller: textController,
                                decoration: const InputDecoration(
                                  // 添加前缀图标
                                  contentPadding: EdgeInsets.symmetric(
                                    horizontal: 10.0,
                                  ),
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.grey,
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            ElevatedButton(
                              onPressed: () {},
                              style: ButtonStyle(
                                backgroundColor:
                                    WidgetStateProperty.all(Colors.blueAccent),
                                foregroundColor: WidgetStateProperty.all(
                                    Colors.white), // 设置文本颜色
                                shape: WidgetStateProperty.all(
                                    RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.circular(10.0), // 设置圆角
                                )),
                              ),
                              child: Text(
                                "查询",
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            ElevatedButton(
                              onPressed: () {},
                              style: ButtonStyle(
                                foregroundColor: WidgetStateProperty.all(
                                  Colors.black54,
                                ), // 设置文本颜色
                                shape: WidgetStateProperty.all(
                                    RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.circular(10.0), // 设置圆角
                                )),
                              ),
                              child: Text(
                                "重置",
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "线索列表",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              ElevatedButton(
                                onPressed: () {},
                                style: ButtonStyle(
                                  backgroundColor: WidgetStateProperty.all(
                                      Colors.blueAccent),
                                  foregroundColor: WidgetStateProperty.all(
                                      Colors.white), // 设置文本颜色
                                  shape: WidgetStateProperty.all(
                                      RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.circular(10.0), // 设置圆角
                                  )),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Icon(
                                      CupertinoIcons.add,
                                      size: 15,
                                      color: Colors.white,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      "新建",
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              ElevatedButton(
                                onPressed: () {},
                                style: ButtonStyle(
                                  foregroundColor: WidgetStateProperty.all(
                                    Colors.black54,
                                  ), // 设置文本颜色
                                  shape: WidgetStateProperty.all(
                                      RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.circular(10.0), // 设置圆角
                                  )),
                                ),
                                child: Text(
                                  "批量操作",
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Expanded(
                        child: Scaffold(
                          appBar: AppBar(
                            bottom: TabBar(
                              tabs: <Widget>[
                                Tab(text: '全部线索'),
                                Tab(text: '我负责的线索'),
                                Tab(text: '下属负责的线索'),
                                Tab(text: '已转化的线索')
                              ],
                              controller: _tabController,
                            ),
                          ),
                          body: TabBarView(
                            controller: _tabController,
                            children: <Widget>[
                              Center(child: Text('今日爆款')),
                              Center(child: Text('土货生鲜')),
                              Center(child: Text('会员中心')),
                              Center(child: Text('分类'))
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
