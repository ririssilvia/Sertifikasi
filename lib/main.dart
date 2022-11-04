import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sertifikasi/controllers/login_controller.dart';
import 'package:sertifikasi/pages/home.dart';
import 'package:sertifikasi/pages/login.dart';
import 'package:sertifikasi/pages/register.dart';
import 'controllers/register_controller.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // daftar controller
    final loginC = Get.put(LoginController());
    final registerC = Get.put(RegisterController());

    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Sertifikasi',
      getPages: [
        GetPage(name: '/home', page: () => HomePage()),
        GetPage(name: '/login', page: () => LoginPage()),
        GetPage(name: '/register',page: () => RegisterPage(),),
      ],
      home: LoginPage(),
    );
  }
}
