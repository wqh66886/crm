import 'package:flutter/material.dart';

class CommissionBusinessOpportunityPage extends StatefulWidget {
  const CommissionBusinessOpportunityPage({super.key});

  @override
  State<CommissionBusinessOpportunityPage> createState() =>
      _CommissionBusinessOpportunityPageState();
}

class _CommissionBusinessOpportunityPageState
    extends State<CommissionBusinessOpportunityPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Text("待联系商机"));
  }
}
