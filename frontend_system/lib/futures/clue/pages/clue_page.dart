import 'package:flutter/material.dart';

class CluePage extends StatefulWidget {
  const CluePage({super.key});

  @override
  State<CluePage> createState() => _CluePageState();
}

class _CluePageState extends State<CluePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("线索"),
      ),
    );
  }
}
