import 'package:flutter/material.dart';

class ExpiringContractPage extends StatefulWidget {
  const ExpiringContractPage({super.key});

  @override
  State<ExpiringContractPage> createState() => _ExpiringContractPageState();
}

class _ExpiringContractPageState extends State<ExpiringContractPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Text("即将到期合同"));
  }
}
