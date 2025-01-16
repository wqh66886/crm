import 'package:flutter/material.dart';

class CommissionApprovePage extends StatefulWidget {
  const CommissionApprovePage({super.key});

  @override
  State<CommissionApprovePage> createState() => _CommissionApprovePageState();
}

class _CommissionApprovePageState extends State<CommissionApprovePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Text("待联系审批"));
  }
}
