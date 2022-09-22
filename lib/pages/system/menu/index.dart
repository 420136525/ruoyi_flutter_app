import 'package:flutter/material.dart';

class MenuIndex extends StatefulWidget {
  const MenuIndex({Key? key}) : super(key: key);

  @override
  State<MenuIndex> createState() => _MenuIndexState();
}

class _MenuIndexState extends State<MenuIndex> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Text("MenuIndex"),
      ),
    );
  }
}
