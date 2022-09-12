import 'package:flutter/material.dart';
import 'package:flutter_swiper_null_safety_flutter3/flutter_swiper_null_safety_flutter3.dart';

class WorkIndex extends StatefulWidget {
  const WorkIndex({Key? key}) : super(key: key);

  @override
  State<WorkIndex> createState() => _WorkIndexState();
}

class _WorkIndexState extends State<WorkIndex> {
  List<Widget> _getListData() {
    var tempList = listData.map((value) {
      return SingleChildScrollView(
        child: Column(
          children: [
            Icon(
              value['icon'],
              size: 40,
            ),
            Text(value['title']),
          ],
        ),
      );
    });
    return tempList.toList();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "工作台",
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.transparent, // 背景颜色设置为透明
          shadowColor: Colors.transparent,
        ),
        body: Container(
          child: ListView(
            children: [
              AspectRatio(
                aspectRatio: 16 / 7,
                child: Swiper(
                  itemBuilder: (BuildContext context, int index) {
                    return Image.asset(
                      imageList[index]["url"],
                      fit: BoxFit.fill,
                    );
                  },
                  // 配置图片数量
                  itemCount: imageList.length,
                  // 底部分页器
                  pagination: const SwiperPagination(),
                  // 左右箭头
                  control: const SwiperControl(),
                  // 无限循环
                  loop: true,
                  // 自动轮播
                  autoplay: true,
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.more_vert,
                  color: Theme.of(context).accentColor,
                ),
                title: const Text(
                  "系统管理",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w400),
                ),
              ),
              Container(
                height: 500,
                child: GridView.count(
                  crossAxisCount: 4,
                  crossAxisSpacing: 10.0,
                  //childAspectRatio: 10.0,
                  padding: const EdgeInsets.all(10),
                  children: _getListData(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

List listData = [
  {'title': '用户管理', 'icon': Icons.person},
  {'title': '角色管理', 'icon': Icons.supervisor_account_rounded},
  {'title': '菜单管理', 'icon': Icons.palette_outlined},
  {'title': '部门管理', 'icon': Icons.tune},
  {'title': '岗位管理', 'icon': Icons.favorite},
  {'title': '字典管理', 'icon': Icons.menu},
  {'title': '参数设置', 'icon': Icons.settings},
  {'title': '通知公告', 'icon': Icons.message},
  {'title': '日志管理', 'icon': Icons.book},
];

List<Map> imageList = [
  {"url": "static/images/banner/banner01.jpg"},
  {"url": "static/images/banner/banner02.jpg"},
  {"url": "static/images/banner/banner03.jpg"}
];
