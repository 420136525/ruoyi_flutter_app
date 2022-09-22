import 'package:flutter/material.dart';

class NoticeIndex extends StatefulWidget {
  const NoticeIndex({Key? key}) : super(key: key);

  @override
  State<NoticeIndex> createState() => _NoticeIndexState();
}

class _NoticeIndexState extends State<NoticeIndex> {
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
