import 'package:get/route_manager.dart';
import 'package:ruoyi_app/pages/login.dart';
import 'package:ruoyi_app/pages/mine/about/index.dart';
import 'package:ruoyi_app/pages/mine/help/index.dart';
import 'package:ruoyi_app/pages/mine/info/edit.dart';
import 'package:ruoyi_app/pages/mine/info/index.dart';

import '../pages/mine/setting/index.dart';
import '../pages/pages_index.dart';
import 'app_routes.dart';

class AppPages {
  static const INITIAL = AppRoutes.Home;
  static const INITIALLOGIN = AppRoutes.Login;

  static final routes = [
    GetPage(
      name: AppRoutes.Home,
      page: () => const PageIndex(),
      children: [
        GetPage(name: AppRoutes.info, page: () => const InfoIndex()),
        GetPage(name: AppRoutes.about, page: () => const About()),
        GetPage(name: AppRoutes.userEdit, page: () => const UserEdit()),
        GetPage(name: AppRoutes.help, page: () => const Help()),
        GetPage(name: AppRoutes.settings, page: () => const Settings())
      ],
    ),
    GetPage(name: AppRoutes.Login, page: () => const MyHome()),
  ];
}