import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sertifikasi/model/user.dart';
import 'package:sertifikasi/services/login_service.dart';


class LoginController extends GetxController {
  final usC = TextEditingController();
  final passC = TextEditingController();
//proese login
  login() async {
    //Model
    final userModel = UserModel();
    userModel.username = usC.text;
    userModel.password = passC.text;
    //service
    List<Map<String, Object?>> data = await LoginService.login(userModel);
    return data;
  }
  //database
  static findAll() async {
    print(await LoginService.findAll());
  }

  @override
  void onInit() {
    // TODO: implement onInit
    LoginController.findAll();
  }

  @override
  void dispose() {
    usC.clear();
    passC.clear();
  }
}
