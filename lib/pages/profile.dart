import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sertifikasi/controllers/register_controller.dart';

class ProfileDart extends StatelessWidget {
  const ProfileDart({
    Key? key,
    required this.dataUser,
  }) : super(key: key);

  final dataUser;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 112, 178, 231),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child:
              Text(
                'Profile',
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                    fontSize: 40,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SvgPicture.asset(
              'assets/profile.svg',
              height: 200,
              width: 200,
            ),
          ),
          Form(
            key: Get.find<RegisterController>().form,
            child: Expanded(
              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: 
                    // TextFormField(
                    //   validator: (value) {
                    //     if (value.toString().isEmpty) {
                    //       return "username tidak boleh kosong";
                    //     }
                    //   },
                    //   controller: Get.find<RegisterController>().usCT,
                    //   // initialValue: dataUser[0]['username'],
                    //   decoration: InputDecoration(
                    //     labelText: "Username",
                    //   ),
                    // ),
                    TextFormField(
                    controller: Get.find<RegisterController>().usCT,
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
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: 
                    // TextFormField(
                    //   validator: (value) {
                    //     if (value.toString().isEmpty) {
                    //       return "password tidak boleh kosong";
                    //     }
                    //   },
                    //   controller: Get.find<RegisterController>().passCT,
                    //   // initialValue: dataUser[0]['password'],
                    //   decoration: InputDecoration(
                    //     labelText: "Password",
                    //   ),
                    // ),
                    TextFormField(
                      controller: Get.find<RegisterController>().passCT,
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
                          filled: true,
                          fillColor: Colors.white,
                          focusColor: Colors.white,
                          border: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromARGB(255, 223, 216, 216)),
                              borderRadius: BorderRadius.circular(30)),
                          hintStyle: TextStyle(color: Colors.blue),
                          hintText: 'Masukan Password'),
                      validator: (value) {
                        if (value.toString().isEmpty) {
                          return "Password tidak boleh kosong";
                        }
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: 
                    // TextFormField(
                    //   validator: (value) {
                    //     if (value.toString().isEmpty) {
                    //       return "nama tidak boleh kosong";
                    //     }
                    //   },
                    //   controller: Get.find<RegisterController>().namaCT,
                    //   // initialValue: dataUser[0]['nama_lengkap'],
                    //   decoration: InputDecoration(
                    //     labelText: "Nama Lengkap",
                    //   ),
                    // ),
                    TextFormField(
                      controller: Get.find<RegisterController>().namaCT,
                      cursorColor: Colors.black,
                      style: TextStyle(color: Colors.black),
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(30)),
                          contentPadding: EdgeInsets.all(15),
                          icon: Icon(
                            Icons.person,
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
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                     child: 
                     //TextFormField(
                    //   validator: (value) {
                    //     if (value.toString().isEmpty) {
                    //       return "no hp tidak boleh kosong";
                    //     }
                    //   },
                    //   controller: Get.find<RegisterController>().noHpCT,
                    //   // initialValue: dataUser[0]['noHp'],
                    //   decoration: InputDecoration(
                    //     labelText: "No Hp",
                    //   ),
                    // ),
                    TextFormField(
                      controller: Get.find<RegisterController>().noHpCT,
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
                          hintText: 'Masukan Nomer Telpon '),
                      validator: (value) {
                        if (value.toString().isEmpty) {
                          return "Nomer Telpon tidak boleh kosong";
                        }
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: ElevatedButton(
                        onPressed: () async {
                          if (Get.find<RegisterController>()
                              .form
                              .currentState!
                              .validate()) {
                            var result = await Get.find<RegisterController>()
                                .updateData(dataUser[0]['id']);
                            if (result == 1) {
                              Get.snackbar('success',
                                  'berhasil update data , Login ulang');
                              Timer(
                                Duration(seconds: 3),
                                () {
                                  Get.find<RegisterController>().dispose();
                                  Get.offNamed('/login');
                                },
                              );
                            } else {
                              Get.snackbar('gagal', 'terjadi kesalahan');
                            }
                          }
                        },
                        child: Text('update')),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
