// import 'package:flutter/material.dart';
// import 'package:student_management/ui/sign_in/sign_in_delegate.dart';
// import 'dart:convert';
//
// import '../../api/api_service.dart';
// import '../../components/show_loading.dart';
// import '../../utils/secure_storage.dart';
//
// class LoginProvider extends ChangeNotifier{
//   final emailController = TextEditingController();
//   final passwordController = TextEditingController();
//   late SignInDelegate _delegate;
//
//
//   set delegate(SignInDelegate value) {
//     _delegate = value;
//   }
//
//   bool loading = false;
//
//   void login() async {
//     loading = true;
//     var user = {
//       "email" : emailController.text.toString(),
//       "password" : passwordController.text.toString()
//     };
//     var jsonBody = json.encode(user);
//     ShowLoadingHud().showLoadingHud();
//     ApiService().getApi().login(jsonBody).then((response) async {
//       ShowLoadingHud().dismissLoadingHud();
//       loading = false;
//       if(response.status=="SUCCESS"){
//         _delegate.showSuccess("Đăng nhập thành công.");
//         SecureStorage().save(key: "account", value: jsonBody);
//         await SecureStorage().save(key: "token", value: response.data['accessToken']);
//         await SecureStorage().save(key: "refreshToken", value: response.data['refreshToken']);
//         var x = await SecureStorage().getValue(key: "token");
//         saveUserData(x);
//       }
//       else{
//         _delegate.showError("Tài khoản hoặc mật khẩu không hợp lệ.");
//       }
//       notifyListeners();
//     });
//     notifyListeners();
//   }
//
//   void saveUserData(String token){
//     ApiService(token: token).getApi().getUser().then((response) async {
//       if(response.success??false){
//         var data = User.fromJson(response.data['user']);
//         SecureStorage().save(key: "user", value: json.encode(data));
//       }
//     });
//   }
// }