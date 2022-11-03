import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sertifikasi/pages/dashboard.dart';
import 'package:sertifikasi/pages/profile.dart';
import 'package:sqflite/sqflite.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  var dataUser = Get.arguments;
  final switchC = Get.put(SwicthController());

  List data = [
    dataBody(dataUser: Get.arguments),
    DashboardScrenn(dataUser: Get.arguments),
    ProfileDart(dataUser: Get.arguments),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
        actions: [
          IconButton(
              onPressed: () {
                Get.back();
              },
              icon: Icon(Icons.logout))
        ],
      ),
      body: Obx(
        () {
          return data[switchC.count.value];
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex:switchC.count.value,
          selectedItemColor: Color.fromARGB(255, 15, 98, 167),
          onTap: (value) {
            switchC.count.value = value;
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.dashboard), label: 'dashboard'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'profile'),
          ] , ),
    );
  }
}

class dataBody extends StatelessWidget {
  const dataBody({
    Key? key,
    required this.dataUser,
  }) : super(key: key);

  final dataUser;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(

            ),
            child: Text(
              "Hallo, ${dataUser[0]['nama_lengkap']}",
             textAlign: TextAlign.center,
              style: GoogleFonts.poppins().copyWith(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
        ),
         Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              color: Colors.lightBlue[800],
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  spreadRadius: 10,
                  blurRadius: 10,
                )
              ],
            ),
            margin: EdgeInsets.only(top: 20, left: 20, right: 10, bottom: 20),
            child: Text(
              "Username : ${dataUser[0]['username']}",
              textAlign: TextAlign.center,
             style: GoogleFonts.poppins().copyWith(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),
         Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              color: Colors.lightBlue[800],
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  spreadRadius: 10,
                  blurRadius: 10,
                )
              ],
            ),
            margin: EdgeInsets.only(top: 20, left: 20, right: 10, bottom: 20),
            child: Text(
              "Password ${dataUser[0]['password']}",
              textAlign: TextAlign.center,
             style: GoogleFonts.poppins().copyWith(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),
         Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              color: Colors.lightBlue[800],
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  spreadRadius: 10,
                  blurRadius: 10,
                )
              ],
            ),
            margin: EdgeInsets.only(top: 20, left: 20, right: 10, bottom: 20),
            child: Text(
              "nama lengkap : ${dataUser[0]['nama_lengkap']}",
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins().copyWith(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),
         Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              color: Colors.lightBlue[800],
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  spreadRadius: 10,
                  blurRadius: 10,
                )
              ],
            ),
            margin: EdgeInsets.only(top: 20, left: 20, right: 10, bottom: 20),
            child: Text(
              "No Hp : ${dataUser[0]['noHp']}",
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins().copyWith(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class SwicthController extends GetxController {
  var count = 0.obs;
}
