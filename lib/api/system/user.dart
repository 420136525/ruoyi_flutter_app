import '../../utils/request.dart';

//获取用户信息
var getUserProfile = () async {
  return await DioRequest().httpRequest("/system/user/profile", true, "get");
};

var getRouters = () async {
  return await DioRequest().httpRequest("/getRouters", true, "get");
};
