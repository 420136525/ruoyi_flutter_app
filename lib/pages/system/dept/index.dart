import 'package:flutter/material.dart';

class DeptIndex extends StatefulWidget {
  const DeptIndex({Key? key}) : super(key: key);

  @override
  State<DeptIndex> createState() => _DeptIndexState();
}

class _DeptIndexState extends State<DeptIndex> {
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
