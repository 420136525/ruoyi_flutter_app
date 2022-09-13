import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ruoyi_app/api/system/user.dart';

class UserEdit extends StatefulWidget {
  const UserEdit({Key? key}) : super(key: key);

  @override
  State<UserEdit> createState() => _UserEditState();
}

class _UserEditState extends State<UserEdit> {
  var details = Get.arguments as Map;

  Radio _radioSexBox(index) {
    return Radio(
        value: index,
        groupValue: details["arg"]["data"]["sex"],
        onChanged: (value) {
          setState(() {
            details["arg"]["data"]["sex"] = index;
          });
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "修改资料",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.transparent, // 背景颜色设置为透明
        shadowColor: Colors.transparent,
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 5,
          ),
          Container(
            height: 40,
            child: Flex(
              direction: Axis.horizontal,
              children: [
                Expanded(
                    flex: 3,
                    child: Container(
                      padding: EdgeInsets.only(left: 20),
                      child: Text(
                        "用户昵称",

                      ),
                    )),
                Expanded(
                    flex: 7,
                    child: Container(
                      margin: EdgeInsets.only(right: 20),
                      padding: EdgeInsets.only(left: 5),
                      decoration: BoxDecoration(
                          border: Border.all(width: 1),
                          borderRadius: BorderRadius.all(Radius.circular(5))),
                      child: Container(
                        child: TextField(
                          onChanged: (value) {
                            details["arg"]["data"]["nickName"] = value;
                          },
                          controller: TextEditingController.fromValue(
                            TextEditingValue(
                                text: details["arg"]["data"]["nickName"],
                                selection: TextSelection.fromPosition(
                                    TextPosition(
                                        affinity: TextAffinity.downstream,
                                        offset: details["arg"]["data"]
                                        ["nickName"]
                                            .length))),
                          ),
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            hintText: "请输入昵称",
                            hintStyle: TextStyle(fontSize: 14),
                          ),
                        ),
                      ),
                    )),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            height: 40,
            child: Flex(
              direction: Axis.horizontal,
              children: [
                Expanded(
                    flex: 3,
                    child: Container(
                      padding: EdgeInsets.only(left: 20),
                      child: Text(
                        "手机号码",

                      ),
                    )),
                Expanded(
                    flex: 7,
                    child: Container(
                      margin: EdgeInsets.only(right: 20),
                      padding: EdgeInsets.only(left: 5),
                      decoration: BoxDecoration(
                          border: Border.all(width: 1),
                          borderRadius: BorderRadius.all(Radius.circular(5))),
                      child: Container(
                        child: TextField(
                          onChanged: (value) {
                            details["arg"]["data"]["phonenumber"] = value;
                          },
                          controller: TextEditingController.fromValue(
                            TextEditingValue(
                                text: details["arg"]["data"]["phonenumber"],
                                selection: TextSelection.fromPosition(
                                    TextPosition(
                                        affinity: TextAffinity.downstream,
                                        offset: details["arg"]["data"]
                                        ["phonenumber"]
                                            .length))),
                          ),
                          decoration: const InputDecoration(
                              border: InputBorder.none,
                              hintText: "请输入手机号",
                              hintStyle: TextStyle(fontSize: 14)),
                        ),
                      ),
                    )),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            height: 40,
            child: Flex(
              direction: Axis.horizontal,
              children: [
                Expanded(
                    flex: 3,
                    child: Container(
                      padding: EdgeInsets.only(left: 20),
                      child: Text(
                        "邮箱",

                      ),
                    )),
                Expanded(
                    flex: 7,
                    child: Container(
                      margin: EdgeInsets.only(right: 20),
                      padding: EdgeInsets.only(left: 5),
                      decoration: BoxDecoration(
                          border: Border.all(width: 1),
                          borderRadius: BorderRadius.all(Radius.circular(5))),
                      child: Container(
                        child: TextField(
                          onChanged: (value) {
                            details["arg"]["data"]["email"] = value;
                          },
                          controller: TextEditingController.fromValue(
                            TextEditingValue(
                                text: details["arg"]["data"]["email"],
                                selection: TextSelection.fromPosition(
                                    TextPosition(
                                        affinity: TextAffinity.downstream,
                                        offset: details["arg"]["data"]["email"]
                                            .length))),
                          ),
                          decoration: const InputDecoration(
                              border: InputBorder.none,
                              hintText: "请输入邮箱",
                              hintStyle: TextStyle(fontSize: 14)),
                        ),
                      ),
                    )),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            height: 40,
            child: Flex(
              direction: Axis.horizontal,
              children: [
                Expanded(
                    flex: 3,
                    child: Container(
                      padding: EdgeInsets.only(left: 20),
                      child: Text(
                        "性别",
                      ),
                    )),
                Expanded(
                    flex: 7,
                    child: Row(
                      children: [
                        _radioSexBox("1"),
                        Text("男"),
                        _radioSexBox("2"),
                        Text("女"),
                      ],
                    ))
              ],
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Container(
              height: 45,
              padding: EdgeInsets.only(left: 15, right: 15),
              child: TextButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.blue),
                    shape: MaterialStateProperty.all(
                        const RoundedRectangleBorder(
                            borderRadius:
                            BorderRadius.all(Radius.circular(5.0))))),
                onPressed: () async {
                  var data = await updateProfile(details["arg"]["data"]);
                  if (data.data["code"] == 200) {
                    Get.back();
                    Get.snackbar("", data.data["msg"]);
                  } else {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) =>
                            AlertDialog(
                              content: Text(
                                data.data["msg"],
                                style: TextStyle(color: Colors.cyan),
                              ),
                            ));
                  }
                },
                child: const Text(
                  "提交",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              )),
        ],
      ),
    );
  }
}
