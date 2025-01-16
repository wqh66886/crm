import 'package:flutter/material.dart';

class CommissionClientPage extends StatefulWidget {
  const CommissionClientPage({super.key});

  @override
  State<CommissionClientPage> createState() => _CommissionClientPageState();
}

class _CommissionClientPageState extends State<CommissionClientPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Text("待联系客户"));
  }
}
