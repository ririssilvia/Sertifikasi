import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sertifikasi/controllers/login_controller.dart';
import 'package:sertifikasi/pages/register.dart';

// class LoginPage extends StatelessWidget {
//   LoginPage({super.key});
//   final _form = GlobalKey<FormState>();
//   // ambil controller
//   final loginC = Get.find<LoginController>();
class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _form = GlobalKey<FormState>();
  // ambil controller
  final loginC = Get.find<LoginController>();

  //untuk hidepassword icon
  bool _isHidePassword = true;
  void _togglePasswordVisibility() {
    setState(() {
      _isHidePassword = !_isHidePassword;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 112, 178, 231),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: [
            SizedBox(
              height: 20,
            ),
            Text(
              'Login Page',
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                  fontSize: 40,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              'TSA',
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                  fontSize: 15,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            SvgPicture.asset(
              'assets/login.svg',
              height: 320,
              width: 320,
            ),
            Form(
              key: _form,
              child: Column(
                children: [
                  // TextFormField(
                  //   controller: loginC.usC,
                  //   validator: (value) {
                  //     if (value.toString().isEmpty) {
                  //       return "username tidak boleh kosong";
                  //     }
                  //   },
                  //   decoration: InputDecoration(
                  //       border: OutlineInputBorder( borderRadius: BorderRadius.circular(20.0)),
                  //       labelText: 'Username',
                  //       hintText: 'Masukan Username ')
                  //       ,
                  // ),
                  TextFormField(
                    controller: loginC.usC,
                    cursorColor: Colors.black,
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(30)),
                        contentPadding: EdgeInsets.all(15),
                        icon: Icon(
                          Icons.account_circle,
                          color: Colors.white,
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        focusColor: Colors.white,
                        border: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromARGB(255, 223, 216, 216)),
                            borderRadius: BorderRadius.circular(30)),
                        hintStyle: TextStyle(color: Colors.blue),
                        hintText: 'Username'),
                    validator: (value) {
                      if (value.toString().isEmpty) {
                        return "username tidak boleh kosong";
                      }
                    },
                  ),

                  SizedBox(
                    height: 20,
                  ),
                  // TextFormField(
                  //   controller: loginC.passC,
                  //   validator: (value) {
                  //     if (value.toString().isEmpty) {
                  //       return "username tidak boleh kosong";
                  //     }
                  //   },
                  //   decoration: InputDecoration(
                  //       border: OutlineInputBorder(),
                  //       labelText: 'Password',
                  //       hintText: 'Masukan Password'),
                  // )
                  TextFormField(
                    controller: loginC.passC,
                    obscureText: _isHidePassword,
                    cursorColor: Colors.black,
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(30)),
                        contentPadding: EdgeInsets.all(15),
                        icon: Icon(
                          Icons.lock,
                          color: Colors.white,
                        ),
                        suffixIcon: GestureDetector(
                          onTap: () {
                            _togglePasswordVisibility();
                          },
                          child: Icon(
                            _isHidePassword
                                ? Icons.visibility_off
                                : Icons.visibility,
                            color:
                                _isHidePassword ? Colors.black : Colors.black,
                          ),
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        focusColor: Colors.white,
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(30)),
                        hintStyle: TextStyle(color: Colors.blue),
                        hintText: 'Password'),
                    validator: (value) {
                      if (value.toString().isEmpty) {
                        return "username tidak boleh kosong";
                      }
                    },
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 200,
              height: 40,
              child: TextButton(
                   onPressed: () async {
                      // succes
                      List<Map<String, Object?>> result = await loginC.login();
                      if (result.length != 0) {
                        loginC.dispose();
                        Get.toNamed('/home', arguments: result);
                      } else {
                        Get.snackbar(
                          colorText: Colors.black,
                          'Login gagal',
                          'User tidak tersedia',
                        );
                      }
                    },
                style: TextButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 15, 98, 167),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: Text(
                  'Login',
                  style: GoogleFonts.poppins().copyWith(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: <Widget>[
                Expanded(
                  child: Divider(
                    thickness: 2,
                    color: Colors.white,
                  ),
                ),
                SizedBox(width: 20),
                Text(
                  "OR",
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(width: 20),
                Expanded(
                  child: Divider(
                    thickness: 2,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            SizedBox(
              width: 200,
              height: 40,
              child: TextButton(
                onPressed: () {
                  loginC.dispose();
                  Get.to(() => RegisterPage());
                },
                style: TextButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 15, 98, 167),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: Text(
                  'Register',
                  style: GoogleFonts.poppins().copyWith(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            // ElevatedButton(
            //     onPressed: () async {
            //       // succes
            //       List<Map<String, Object?>> result = await loginC.login();
            //       if (result.length != 0) {
            //         loginC.dispose();
            //         Get.toNamed('/home', arguments: result);
            //       } else {
            //         Get.snackbar(
            //           colorText: Colors.black,
            //           'Login gagal',
            //           'User tidak tersedia',
            //         );
            //       }
            //     },
            //     style: ElevatedButton.styleFrom(
            //       primary: Color.fromARGB(255, 15, 98, 167),
            //       onPrimary: Colors.white,
            //       shape: RoundedRectangleBorder(
            //         borderRadius: BorderRadius.circular(18.0),
            //       ),
            //     ),
            //     child: Text('Login')
            //     ),

            // ElevatedButton(
            //     onPressed: () {
            //       loginC.dispose();
            //       Get.to(() => RegisterPage());
            //     },
            //     child: Text('Register')),
          ],
        ),
      ),
    );
  }
}
