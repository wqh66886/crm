import 'package:flutter/material.dart';

class BusinessOpportunityPage extends StatefulWidget {
  const BusinessOpportunityPage({super.key});

  @override
  State<BusinessOpportunityPage> createState() =>
      _BusinessOpportunityPageState();
}

class _BusinessOpportunityPageState extends State<BusinessOpportunityPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("商机"),
      ),
    );
  }
}
