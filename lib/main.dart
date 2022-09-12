import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:get_storage/get_storage.dart';
import 'package:ruoyi_app/routes/app_pages.dart';
import 'package:ruoyi_app/utils/sputils.dart';

void main() {
  // ignore: invalid_use_of_visible_for_testing_member

  runApp(MyApp());
}

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("登录前的TOKEN:" + ((SPUtil().get<String>("token") ?? "")).toString());
    print("登录前的TOKEN:" + GetStorage().hasData("token").toString());
    
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: GetStorage().hasData("token")
          ? AppPages.INITIAL
          : AppPages.INITIALLOGIN,
      getPages: AppPages.routes,
    );
  }
}
