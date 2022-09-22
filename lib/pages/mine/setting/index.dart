import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:ruoyi_app/icon/ruoyi_icon.dart';
import 'package:ruoyi_app/utils/sputils.dart';

import '../../login.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "应用设置",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.transparent, // 背景颜色设置为透明
        shadowColor: Colors.transparent,
      ),
      body: Container(
        child: ListView(
          children: [
            SizedBox(
              height: 15,
            ),
            Container(
              height: 210,
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                      width: 1,
                      style: BorderStyle.solid,
                      color: Color.fromRGBO(241, 241, 241, 0.8)),
                  borderRadius: BorderRadius.all(
                    Radius.circular(5),
                  )),
              margin: EdgeInsets.only(top: 15, left: 15, right: 15),
              child: Column(
                children: [
                  ListTile(
                    onTap: () {
                      Get.toNamed("/home/settings/pwdIndex");
                    },
                    leading: Icon(RuoYiIcons.password),
                    title: Text("修改密码"),
                    trailing: Icon(Icons.keyboard_arrow_right),
                  ),
                  Divider(),
                  ListTile(
                    onTap: () {
                      Get.snackbar("已经是最新版本！", "");
                    },
                    leading: Icon(RuoYiIcons.refresh),
                    title: Text("检查更新"),
                    trailing: Icon(Icons.keyboard_arrow_right),
                  ),
                  Divider(),
                  ListTile(
                    onTap: () {
                      Get.snackbar("清理成功", "");
                      var token = GetStorage().read("token");
                      GetStorage().erase();
                      GetStorage().write("token", token);
                      SPUtil().clean();
                      SPUtil().setString("token", token);
                    },
                    leading: Icon(RuoYiIcons.clean),
                    title: Text("清理缓存"),
                    trailing: Icon(Icons.keyboard_arrow_right),
                  ),
                ],
              ),
            ),
            Container(
                height: 45,
                margin: EdgeInsets.only(left: 15, right: 15, top: 45),
                child: TextButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.blue),
                      shape: MaterialStateProperty.all(
                          const RoundedRectangleBorder(
                              borderRadius:
                              BorderRadius.all(Radius.circular(5.0))))),
                  onPressed: () {
                    Get.defaultDialog(
                        title: "系统提示",
                        middleText: "您确定要退出吗？",
                        textCancel: "取消",
                        textConfirm: "确定",
                        onConfirm: () {
                          SPUtil().clean();
                          GetStorage().erase();
                          Get.offAll(() => const MyHome());
                        });
                  },
                  child: const Text(
                    "退出登录",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
