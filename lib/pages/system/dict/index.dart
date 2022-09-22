import 'package:flutter/material.dart';

class DictIndex extends StatefulWidget {
  const DictIndex({Key? key}) : super(key: key);

  @override
  State<DictIndex> createState() => _DictIndexState();
}

class _DictIndexState extends State<DictIndex> {
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
