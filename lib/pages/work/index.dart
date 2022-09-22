import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_swiper_null_safety_flutter3/flutter_swiper_null_safety_flutter3.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class WorkIndex extends StatefulWidget {
  const WorkIndex({Key? key}) : super(key: key);

  @override
  State<WorkIndex> createState() => _WorkIndexState();
}

class _WorkIndexState extends State<WorkIndex> {
  int clickIndex = 0;

  // ignore: prefer_function_declarations_over_variables

  @override
  Widget build(BuildContext context) {
    List<Widget> _getListData(index) {
      listData = GetStorage().read("route")[index]["children"];

      var tempList = listData.map((value) {
        if (value["hidden"] == false) {
          return SingleChildScrollView(
            child: InkWell(
              onTap: () {
                Get.toNamed("/${value['component']}", arguments: {
                  "title": value['meta']['title'],
                  "url": "https://ruoyi.vip/protocol.html"
                });
              },
              child: Column(
                children: [
                  SvgPicture.asset(
                    "static/svg/${value["meta"]["icon"]}.svg",
                    width: 30,
                    color: Colors.black,
                  ),
                  Text(value['meta']['title']),
                ],
              ),
            ),
          );
        } else {
          return Divider();
        }
      });
      var list = tempList.toList();
      list.removeWhere((e) {
        return e is Divider;
      });

      return list;
    }

    _decoration(int index) {
      if (index == clickIndex) {
        return const BoxDecoration(
            color: Colors.white,
            border: Border(
              right: BorderSide(
                  width: 1, color: Color.fromRGBO(241, 241, 241, 0.6)),
            ));
      } else {
        return const BoxDecoration(
            color: Color.fromRGBO(210, 210, 210, 1),
            border: Border(
                right: BorderSide(
                  width: 1,
                  color: Color.fromRGBO(241, 241, 241, 0.6),
                ),
                bottom: BorderSide(
                  width: 1,
                  color: Color.fromRGBO(241, 241, 241, 0.6),
                )));
      }
    }

    ;
    List<Widget> _getListData1() {
      listTab = GetStorage().read("route");
      var tempList = listTab.asMap().keys.map((index) {
        if (listTab[index]["hidden"] == false) {
          return InkWell(
              onTap: () {
                if (listTab[index]["meta"]["link"] != null) {
                  Get.toNamed("/login/webView", arguments: {
                    "title": listTab[index]["meta"]["title"],
                    "url": "https://ruoyi.vip/protocol.html"
                  });
                } else {
                  setState(() {
                    clickIndex = index;
                  });
                }
              },
              child: Container(
                width: 98,
                decoration: _decoration(index),
                child: Center(
                  child: RichText(
                    text: TextSpan(children: [
                      WidgetSpan(
                          child: SvgPicture.asset(
                        "static/svg/${listTab[index]["meta"]["icon"]}.svg",
                        width: 20,
                        color: Colors.black,
                      )),
                      WidgetSpan(
                          child: Text(
                        listTab[index]["meta"]["title"],
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600),
                      ))
                    ]),
                  ),
                ),
              ));
        } else {
          return Divider();
        }
      });
      var list = tempList.toList();
      list.removeWhere((e) {
        return e is Divider;
      });
      return list;
    }

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
              Container(
                height: 40,
                decoration: BoxDecoration(),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: _getListData1(),
                ),
              ),
              Container(
                height: 500,
                margin: EdgeInsets.only(top: 30),
                child: GridView.count(
                  crossAxisCount: 4,
                  crossAxisSpacing: 10.0,
                  //childAspectRatio: 10.0,
                  padding: const EdgeInsets.all(10),
                  children: _getListData(clickIndex),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

List listData = [];

List<Map> imageList = [
  {"url": "static/images/banner/banner01.jpg"},
  {"url": "static/images/banner/banner02.jpg"},
  {"url": "static/images/banner/banner03.jpg"}
];

List listTab = [];
