import 'package:flutter/material.dart';

class ConfigIndex extends StatefulWidget {
  const ConfigIndex({Key? key}) : super(key: key);

  @override
  State<ConfigIndex> createState() => _ConfigIndexState();
}

class _ConfigIndexState extends State<ConfigIndex> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Text("DeptIndex"),
      ),
    );
  }
}
