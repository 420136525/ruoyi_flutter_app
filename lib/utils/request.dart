import "package:dio/dio.dart";
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:ruoyi_app/utils/sputils.dart';

/// dio网络请求配置表 自定义
class DioConfig {
  static const baseURL = "https://mouor.cn:8081"; //域名
  static const timeout = 10000; //超时时间
}

// 网络请求工具类
class DioRequest {
  late Dio dio;
  static DioRequest? _instance;

  /// 构造函数
  DioRequest() {
    dio = Dio();
    dio.options = BaseOptions(
        baseUrl: DioConfig.baseURL,
        connectTimeout: DioConfig.timeout,
        sendTimeout: DioConfig.timeout,
        receiveTimeout: DioConfig.timeout,
        contentType: "application/json; charset=utf-8",
        headers: {});

    /// 请求拦截器 and 响应拦截机 and 错误处理
    dio.interceptors.add(InterceptorsWrapper(onRequest: (options, handler) {
      options.responseType = ResponseType.json;
      print("================== 请求数据 ==========================");
      print("url = ${options.uri.toString()}");
      print("headers = ${options.headers}");
      print("params = ${options.data}");
      return handler.next(options);
    }, onResponse: (response, handler) {
      if (response.realUri.path == "/login") {
        if (response.data["code"] == 200) {
          GetStorage().write("token", response.data["token"]);
          SPUtil().setString("token", response.data["token"]);
        }
      }
      if (response.realUri.path == "/system/user/profile") {
        if (response.data["code"] == 200) {
          GetStorage().write("roleGroup", response.data["roleGroup"]);
        }
      }
      if (response.realUri.path == "/getRouters") {
        if (response.data["code"] == 200) {
          GetStorage().write("route", response.data["data"]);
        }
      }

      if (response.realUri.path == "/getInfo") {
        if (response.data["code"] == 200) {
          GetStorage().write("nickName", response.data["user"]["nickName"]);
          GetStorage().write("userName", response.data["user"]["userName"]);
          SPUtil().setString(
              "avatar",
              response.data["user"]["avatar"] ??
                  "http://vue.ruoyi.vip/static/img/profile.473f5971.jpg");
        }
      }
      if (response.data["code"] == 403) {
        SPUtil().clean();
        GetStorage().erase();
        Get.toNamed("/login");
      }
      if ((response.data["code"] == 401)) {
        SPUtil().clean();
        GetStorage().erase();
        Get.offAll("/login");
      }
      print("================== 响应数据 ==========================");
      print("code = ${response.statusCode}");
      print("data = ${response.data}");
      handler.next(response);
    }, onError: (DioError e, handler) {
      Get.snackbar("网络错误", "请求失败");
      print("================== 错误响应数据 ======================");
      print("type = ${e.type}");
      print("message = ${e.message}");
      return handler.next(e);
    }));
  }

  static DioRequest getInstance() {
    return _instance ??= DioRequest();
  }

  httpRequest(
    String path,
    bool isToken,
    String method, {
    data,
    Map<String, dynamic>? queryParameters,
    CancelToken? cancelToken,
    Options? options,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    Options options;
    if (isToken) {
      if (!GetStorage().hasData("token")) {
        var token = SPUtil().get("token");
        if (token != null) {
          GetStorage().write("token", token);
        } else {
          ///TODO 如果也是空的那么清空所有信息，跳转登录页面逻辑
          GetStorage().remove("token");
          SPUtil().remove("token");
          Get.offNamed("/login");
        }
      }
      options = Options(
        headers: {
          "content-type": "application/json; charset=utf-8",
          "Authorization": "Bearer ${GetStorage().read("token")}",
        },
        method: method,
      );
    } else {
      options = Options(
        headers: {"content-type": "application/json; charset=utf-8"},
        method: method,
      );
    }
    switch (method) {
      case "get":
        return await dio.request(path,
            queryParameters: queryParameters, options: options);
      case "post":
        return await dio.request(path, data: data, options: options);
      case "put":
        return await dio.request(
          path,
          queryParameters: data,
          data: data,
          options: options,
        );
      case "delete":
        return await dio.request(path, data: data, options: options);
    }
  }
}
