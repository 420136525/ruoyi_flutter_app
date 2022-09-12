import 'package:flutter/material.dart';
import 'package:ruoyi_app/pages/work/index.dart';

import 'home/index.dart';
import 'mine/index.dart';

class PageIndex extends StatefulWidget {
  const PageIndex({Key? key}) : super(key: key);

  @override
  State<PageIndex> createState() => _PageIndexState();
}

class _PageIndexState extends State<PageIndex> {
  int _index_current = 0;

  final List _pageList = [
    const HomeIndex(),
    const WorkIndex(),
    const MineIndex(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pageList[_index_current],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _index_current,
        onTap: (int index) {
          setState(() {
            _index_current = index;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "首页"),
          BottomNavigationBarItem(icon: Icon(Icons.grid_view), label: "工作台"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "我的"),
        ],
      ),
    );
  }
}
