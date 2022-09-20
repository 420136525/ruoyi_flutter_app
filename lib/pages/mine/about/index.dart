import 'package:flutter/material.dart';

class About extends StatefulWidget {
  const About({Key? key}) : super(key: key);

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "关于我们",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.transparent, // 背景颜色设置为透明
        shadowColor: Colors.transparent,
      ),
      body: Container(
        margin: const EdgeInsets.only(right: 15, left: 15, top: 15),
        child: ListView(
          children: [
            SizedBox(
              height: 150,
              child: GridView.count(
                crossAxisCount: 1,
                //childAspectRatio: 10.0,
                padding: const EdgeInsets.all(10),
                children: [
                  SingleChildScrollView(
                    child: Column(
                      children: [
                        Image.asset(
                          "static/logo200.png",
                          width: 100,
                        ),
                        const Text(
                          "若依移动端",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              child: Container(
                height: 230,
                margin: const EdgeInsets.only(right: 15, left: 15),
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                        width: 1,
                        color: const Color.fromRGBO(241, 241, 241, 1)),
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
                        title: const Text(
                          "版本信息",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w300),
                        ),
                        trailing: RichText(
                          text: const TextSpan(
                            children: [
                              WidgetSpan(
                                  child: Text(
                                "v1.0.0",
                                style: TextStyle(fontSize: 16),
                              )),
                              WidgetSpan(
                                  child: Icon(Icons.keyboard_arrow_right))
                            ],
                          ),
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
                        title: const Text(
                          "官方邮箱",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w300),
                        ),
                        trailing: RichText(
                          text: const TextSpan(
                            children: [
                              WidgetSpan(
                                  child: Text(
                                "ruoyi@xx.com",
                                style: TextStyle(fontSize: 16),
                              )),
                              WidgetSpan(
                                  child: Icon(Icons.keyboard_arrow_right))
                            ],
                          ),
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
                        title: const Text(
                          "服务热线",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w300),
                        ),
                        trailing: RichText(
                          text: const TextSpan(
                            children: [
                              WidgetSpan(
                                  child: Text(
                                "400-999-9999",
                                style: TextStyle(fontSize: 16),
                              )),
                              WidgetSpan(
                                  child: Icon(Icons.keyboard_arrow_right))
                            ],
                          ),
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
                        title: const Text(
                          "公司网站",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w300),
                        ),
                        trailing: RichText(
                          text: const TextSpan(
                            children: [
                              WidgetSpan(
                                  child: Text(
                                "http://ruoyi.vip",
                                style: TextStyle(fontSize: 16),
                              )),
                              WidgetSpan(
                                  child: Icon(Icons.keyboard_arrow_right))
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const ListTile(
              subtitle: Text("Copyright @ 2022 ruoyi.vip All Rights Reserved."),
            ),
          ],
        ),
      ),
    );
  }
}
