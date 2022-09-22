import 'package:flutter/material.dart';

class UserIndex extends StatefulWidget {
  const UserIndex({Key? key}) : super(key: key);

  @override
  State<UserIndex> createState() => _UserIndexState();
}

class _UserIndexState extends State<UserIndex> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Text("UserIndex"),
      ),
    );
  }
}
