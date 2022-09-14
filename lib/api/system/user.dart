import '../../utils/request.dart';

//获取用户信息
var getUserProfile = () async {
  return await DioRequest().httpRequest("/system/user/profile", true, "get");
};

var getRouters = () async {
  return await DioRequest().httpRequest("/getRouters", true, "get");
};

var getProfile = () async {
  return await DioRequest().httpRequest("/system/user/profile", true, "get");
};

var updateProfile = (data) async {
  return await DioRequest()
      .httpRequest("/system/user/profile", true, "put", data: data);
};

var updateUserPwd = (data) async {
  return await DioRequest()
      .httpRequest("/system/user/profile/updatePwd", true, "put", data: data);
};
