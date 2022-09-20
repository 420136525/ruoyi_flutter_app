import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ruoyi_app/icon/ruoyi_icon.dart';

class Help extends StatefulWidget {
  const Help({Key? key}) : super(key: key);

  @override
  State<Help> createState() => _HelpState();
}

class _HelpState extends State<Help> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "常见问题",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.transparent, // 背景颜色设置为透明
        shadowColor: Colors.transparent,
      ),
      body: ListView(
        children: [
          ListTile(
            minLeadingWidth: -10,
            leading: Icon(
              RuoYiIcons.github,
              size: 25,
              color: Colors.black,
            ),
            title: const Text(
              "Ruoyi问题",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
          ),
          SingleChildScrollView(
            child: Container(
              height: 230,
              margin: const EdgeInsets.only(right: 15, left: 15),
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                      width: 1, color: const Color.fromRGBO(241, 241, 241, 1)),
                  borderRadius: const BorderRadius.all(Radius.circular(5.0))),
              child: Column(
                children: [
                  Container(
                    decoration: const BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                                width: 1,
                                color: Color.fromRGBO(241, 241, 241, 1)))),
                    child: ListTile(
                      onTap: () {
                        var arg = {"title": "若依开源吗？", "context": "开源"};
                        Get.toNamed("/home/help/helpDetails", arguments: arg);
                      },
                      title: const Text(
                        "若依开源吗？",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w300),
                      ),
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                                width: 1,
                                color: Color.fromRGBO(241, 241, 241, 1)))),
                    child: ListTile(
                      onTap: () {
                        var arg = {"title": "若依可以商用吗？", "context": "可以"};
                        Get.toNamed("/home/help/helpDetails", arguments: arg);
                      },
                      title: const Text(
                        "若依可以商用吗？",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w300),
                      ),
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                                width: 1,
                                color: Color.fromRGBO(241, 241, 241, 1)))),
                    child: ListTile(
                      onTap: () {
                        var arg = {
                          "title": "若依官网地址多少？",
                          "context": "http://ruoyi.vip"
                        };
                        Get.toNamed("/home/help/helpDetails", arguments: arg);
                      },
                      title: const Text(
                        "若依官网地址多少？",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w300),
                      ),
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                                width: 1,
                                color: Color.fromRGBO(241, 241, 241, 1)))),
                    child: ListTile(
                      onTap: () {
                        var arg = {
                          "title": "若依依文档地址多少？",
                          "context": "http://doc.ruoyi.vip"
                        };
                        Get.toNamed("/home/help/helpDetails", arguments: arg);
                      },
                      title: const Text(
                        "若依依文档地址多少？",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w300),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const ListTile(
            minLeadingWidth: -10,
            leading: Icon(
              Icons.contact_support,
              size: 30,
              color: Colors.black,
            ),
            title: Text(
              "其他问题",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
          ),
          SingleChildScrollView(
            child: Container(
              height: 173,
              margin: const EdgeInsets.only(right: 15, left: 15),
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                      width: 1, color: const Color.fromRGBO(241, 241, 241, 1)),
                  borderRadius: const BorderRadius.all(Radius.circular(5.0))),
              child: Column(
                children: [
                  Container(
                    decoration: const BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                                width: 1,
                                color: Color.fromRGBO(241, 241, 241, 1)))),
                    child: ListTile(
                      onTap: () {
                        var arg = {
                          "title": "如何退出登录？",
                          "context": "请点击[我的] - [应用设置] - [退出登录]即可退出登录"
                        };
                        Get.toNamed("/home/help/helpDetails", arguments: arg);
                      },
                      title: const Text(
                        "如何退出登录？",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w300),
                      ),
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                                width: 1,
                                color: Color.fromRGBO(241, 241, 241, 1)))),
                    child: ListTile(
                      onTap: () {
                        var arg = {
                          "title": "如何修改用户头像？",
                          "context": "请点击[我的] - [选择头像] - [点击提交]即可更换用户头像"
                        };
                        Get.toNamed("/home/help/helpDetails", arguments: arg);
                      },
                      title: const Text(
                        "如何修改用户头像？",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w300),
                      ),
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                                width: 1,
                                color: Color.fromRGBO(241, 241, 241, 1)))),
                    child: ListTile(
                      onTap: () {
                        var arg = {
                          "title": "如何修改登录密码？",
                          "context": "请点击[我的] - [应用设置] - [修改密码]即可修改登录密码"
                        };
                        Get.toNamed("/home/help/helpDetails", arguments: arg);
                      },
                      title: const Text(
                        "如何修改登录密码？",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w300),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
