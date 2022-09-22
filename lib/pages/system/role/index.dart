import 'package:flutter/material.dart';

class RoleIndex extends StatefulWidget {
  const RoleIndex({Key? key}) : super(key: key);

  @override
  State<RoleIndex> createState() => _RoleIndexState();
}

class _RoleIndexState extends State<RoleIndex> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Text("RoleIndex"),
      ),
    ));
  }
}
