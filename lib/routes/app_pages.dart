import 'package:get/route_manager.dart';
import 'package:ruoyi_app/pages/common/webview/index.dart';
import 'package:ruoyi_app/pages/login.dart';
import 'package:ruoyi_app/pages/mine/about/index.dart';
import 'package:ruoyi_app/pages/mine/help/details.dart';
import 'package:ruoyi_app/pages/mine/help/index.dart';
import 'package:ruoyi_app/pages/mine/info/edit.dart';
import 'package:ruoyi_app/pages/mine/info/index.dart';
import 'package:ruoyi_app/pages/system/role/index.dart';

import '../pages/mine/pwd/index.dart';
import '../pages/mine/setting/index.dart';
import '../pages/pages_index.dart';
import '../pages/system/dept/index.dart';
import '../pages/system/menu/index.dart';
import '../pages/system/user/index.dart';
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
        GetPage(name: AppRoutes.help, page: () => const Help(), children: [
          GetPage(name: AppRoutes.helpDetails, page: () => const HelpDetails())
        ]),
        GetPage(
            name: AppRoutes.settings,
            page: () => const Settings(),
            children: [
              GetPage(name: AppRoutes.pwdIndex, page: () => const PWDIndex())
            ])
      ],
    ),
    GetPage(name: AppRoutes.Login, page: () => const MyHome(), children: [
      GetPage(name: AppRoutes.webView, page: () => const WebViewIndex())
    ]),
    GetPage(name: AppRoutes.user, page: () => const UserIndex()),
    GetPage(name: AppRoutes.role, page: () => const RoleIndex()),
    GetPage(name: AppRoutes.menu, page: () => const MenuIndex()),
    GetPage(name: AppRoutes.dept, page: () => const DeptIndex()),
  ];
}
