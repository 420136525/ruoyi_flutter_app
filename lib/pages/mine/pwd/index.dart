import 'package:flutter/material.dart';

class PWDIndex extends StatefulWidget {
  const PWDIndex({Key? key}) : super(key: key);

  @override
  State<PWDIndex> createState() => _PWDIndexState();
}

class _PWDIndexState extends State<PWDIndex> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "应用设置",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.transparent, // 背景颜色设置为透明
        shadowColor: Colors.transparent,
      ),
      body: Container(
        color: Colors.red,
      ),
    );
  }
}
