import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sertifikasi/controllers/register_controller.dart';
import 'package:sertifikasi/pages/login.dart';


class RegisterPage extends StatelessWidget {
  RegisterPage({super.key});
  final _form = GlobalKey<FormState>();
  // cari controller
  final registerC = Get.put(RegisterController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 112, 178, 231),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            SizedBox(
              height: 20,
            ),
            Text(
              'Register Page',
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
              'assets/register.svg',
              height: 320,
              width: 320,
            ),
            
            Form(
              key: _form,
              child: Column(
                children: [
                  // TextFormField(
                  //   controller: registerC.usC,
                  //   validator: (value) {
                  //     if (value.toString().isEmpty) {
                  //       return "username tidak boleh kosong";
                  //     }
                  //   },
                  //   decoration: InputDecoration(
                  //       border: OutlineInputBorder(),
                  //       labelText: 'Username',
                  //       hintText: 'Masukan Username'),
                  // ),
                  TextFormField(
                    controller: registerC.usC,
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
                        hintText: 'Masukan Username'),
                      validator: (value) {
                        if (value.toString().isEmpty) {
                          return "username tidak boleh kosong";
                        }
                      },
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  // TextFormField(
                  //   controller: registerC.passC,
                  //   validator: (value) {
                  //     if (value.toString().isEmpty) {
                  //       return "Password tidak boleh kosong";
                  //     }
                  //   },
                  //   decoration: InputDecoration(
                  //       border: OutlineInputBorder(),
                  //       labelText: ' Password',
                  //       hintText: 'Masukan Password'),
                  // ),
                  TextFormField(
                   controller: registerC.passC,
                    // obscureText: _isHidePassword,
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
                        // suffixIcon: GestureDetector(
                        //   onTap: () {
                        //     _togglePasswordVisibility();
                        //   },
                        //   child: Icon(
                        //     _isHidePassword
                        //         ? Icons.visibility_off
                        //         : Icons.visibility,
                        //     color:
                        //         _isHidePassword ? Colors.black : Colors.black,
                        //   ),
                        // ),
                        filled: true,
                        fillColor: Colors.white,
                        focusColor: Colors.white,
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(30)),
                        hintStyle: TextStyle(color: Colors.blue),
                        hintText: 'Masukan Password'),
                      validator: (value) {
                        if (value.toString().isEmpty) {
                          return "Password tidak boleh kosong";
                        }
                      },
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  // TextFormField(
                  //   controller: registerC.namaC,
                  //   validator: (value) {
                  //     if (value.toString().isEmpty) {
                  //       return "Nama Lengkap tidak boleh kosong";
                  //     }
                  //   },
                  //   decoration: InputDecoration(
                  //       border: OutlineInputBorder(),
                  //       labelText: 'Nama Lengkap',
                  //       hintText: 'Masukan Nama lengkap'),
                  // ),
                  TextFormField(
                    controller: registerC.namaC,
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
                        hintText: 'Masukan Nama Lengkap'),
                    validator: (value) {
                      if (value.toString().isEmpty) {
                        return "Nama Lengkap tidak boleh kosong";
                      }
                    },
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  // TextFormField(
                  //   controller: registerC.noHpC,
                  //   validator: (value) {
                  //     if (value.toString().isEmpty) {
                  //       return "No telp tidak boleh kosong";
                  //     }
                  //   },
                  //   decoration: InputDecoration(
                  //       border: OutlineInputBorder(),
                  //       hintText: 'Masukan Nomer telepon',
                  //       labelText: 'No Telepon'),
                  // )
                  TextFormField(
                    controller: registerC.noHpC,
                    cursorColor: Colors.black,
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(30)),
                        contentPadding: EdgeInsets.all(15),
                        icon: Icon(
                          Icons.phone,
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
                        hintText: 'Masukan No Telpon'),
                    validator: (value) {
                      if (value.toString().isEmpty) {
                        return "No telpon tidak boleh kosong";
                      }
                    },
                  ),
                ],
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  if (_form.currentState!.validate()) {
                    registerC.register();
                    Get.snackbar('success', 'berhasil register');
                    Timer(
                      Duration(seconds: 3),
                      () => Get.off(() => LoginPage()),
                    );
                  }
                },
                 style: TextButton.styleFrom(backgroundColor:  Color.fromARGB(255, 15, 98, 167),
                 shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                 ),
                child: Text('Submit',
                style: GoogleFonts.poppins().copyWith(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                )
                ),
            InkWell(
              onTap: () {
                registerC.dispose();
                Get.to(LoginPage());
              },
              child: Text(
                'Login sekarang',
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
