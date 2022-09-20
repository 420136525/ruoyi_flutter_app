import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HelpDetails extends StatelessWidget {
  const HelpDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var arg = Get.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          arg["title"],
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.transparent, // 背景颜色设置为透明
        shadowColor: Colors.transparent,
      ),
      body: Container(
        margin: EdgeInsets.only(right: 15, left: 15, top: 15),
        child: Container(
          child: ListView(
            children: [
              SingleChildScrollView(
                child: Container(
                  height: 116,
                  margin: const EdgeInsets.only(right: 15, left: 15),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                          width: 1,
                          color: const Color.fromRGBO(241, 241, 241, 1)),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(5.0))),
                  child: Column(
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                                    width: 1,
                                    color: Color.fromRGBO(241, 241, 241, 1)))),
                        child: ListTile(
                          title: Text(
                            arg["title"],
                            style: const TextStyle(
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
                          onTap: () {},
                          title: Text(
                            arg["context"],
                            style: const TextStyle(
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
        ),
      ),
    );
  }
}
