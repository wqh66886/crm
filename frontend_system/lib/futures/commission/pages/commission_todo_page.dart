import 'package:flutter/material.dart';

class CommissionTodoPage extends StatefulWidget {
  const CommissionTodoPage({super.key});

  @override
  State<CommissionTodoPage> createState() => _CommissionTodoPageState();
}

class _CommissionTodoPageState extends State<CommissionTodoPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Text("待处理任务"));
  }
}
