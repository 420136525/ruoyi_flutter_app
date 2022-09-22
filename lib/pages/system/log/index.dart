import 'package:flutter/material.dart';

class LogIndex extends StatefulWidget {
  const LogIndex({Key? key}) : super(key: key);

  @override
  State<LogIndex> createState() => _LogIndexState();
}

class _LogIndexState extends State<LogIndex> {
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
