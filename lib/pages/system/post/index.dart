import 'package:flutter/material.dart';

class PostIndex extends StatefulWidget {
  const PostIndex({Key? key}) : super(key: key);

  @override
  State<PostIndex> createState() => _PostIndexState();
}

class _PostIndexState extends State<PostIndex> {
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
