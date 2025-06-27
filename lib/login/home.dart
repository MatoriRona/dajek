// ignore_for_file: use_key_in_widget_constructors

import 'package:dajek/food_order/home_food.dart';
import 'package:dajek/ride_car_order/mapbox_order25.dart';
import 'package:dajek/transaction/transaction_proses.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Map<String, dynamic>> _listCont = [
    {
      "gambar": "images/mobil.png",
      "teks": "Dacar",
      "route": const MapboxOrder25(), // Tambahkan route jika ingin menavigasi ke halaman tertentu
    },
    {
      "gambar": "images/motor.png",
      "teks": "Daride",
      "route": const MapboxOrder25(), // Tambahkan route jika ingin menavigasi ke halaman tertentu
    },
    {
      "gambar": "images/food.png",
      "teks": "Dafood",
      "route": const HomePageFood(), // Tambahkan route jika ingin menavigasi ke halaman tertentu
    },
    {
      "gambar": "images/more.png",
      "teks": "More",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50, left: 30, ),
              child: Row(
                children: [
                  const Image(
                    image: AssetImage("images/dajek2.png"),
                    height: 30,
                    width: 85.44,
                  ),
                  const SizedBox(
                    width: 90,
                  ),
                  Expanded(
                    child: ListTile(
                      title: Text(
                        "Zeenache",
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xFF000000),
                        ),
                      ),
                      subtitle: Align(
                        child: Text(
                          "12 Oct 21",
                          style: GoogleFonts.poppins(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey[500],
                          ),
                        ),
                      ),
                      trailing: const Image(
                        image: AssetImage(
                          "images/topuser.png",
                        ),
                        height: 40,
                        width: 40,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 41,
            ),
            Column(
              children: [
                Container(
                  height: 80,
                  width: 363,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(16)),
                    color: Color(0xFFE11717),
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 20, top: 16, bottom: 21),
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "My balance",
                              style: GoogleFonts.poppins(
                                fontSize: 10,
                                fontWeight: FontWeight.w500,
                                color: const Color(0xFFFFFFFF),
                              ),
                            ),
                            Text(
                              "Rp 99.880",
                              style: GoogleFonts.poppins(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: const Color(0xFFFFFFFF),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 57.5,
                        ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image(
                              image: AssetImage("images/add.png"),
                              height: 22,
                              width: 22,
                              color: Color(0xFFFFFFFF),
                            ),
                            SizedBox(width: 37),
                            Image(
                              image: AssetImage("images/arow_repeat.png"),
                              height: 22,
                              width: 22,
                            ),
                            SizedBox(width: 37),
                            Image(
                              image: AssetImage("images/clok.png"),
                              height: 24,
                              width: 24,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 49),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: _listCont.map((item) {
                return GestureDetector(
                  onTap: () {
                    if (item['route'] != null) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => item['route']),
                      );
                    }
                  },
                  child: Column(
                    children: [
                      Container(
                        height: 68,
                        width: 68,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: Colors.pink.withOpacity(0.1),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Image(
                            image: AssetImage(
                              item['gambar'],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        item['teks'],
                        style: GoogleFonts.roboto(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xFF000000),
                        ),
                      ),
                    ],
                  ),
                );
              }).toList(),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18, right: 14),
              child: ListTile(
                leading: Text(
                  "Today's Promo",
                  style: GoogleFonts.roboto(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: const Color(0xFF000000),
                  ),
                ),
                trailing: Text(
                  "See All",
                  style: GoogleFonts.roboto(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey[500],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 35, right: 24),
              child: Image.asset("images/layanan.png"),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18, right: 14),
              child: ListTile(
                leading: Text(
                  "New Articles",
                  style: GoogleFonts.roboto(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: const Color(0xFF000000),
                  ),
                ),
                trailing: Text(
                  "See All",
                  style: GoogleFonts.roboto(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey[500],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 35, right: 24),
              child: Image.asset("images/aktivitas.png"),
            )
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Container(
          height: 85,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                blurRadius: 10.0,
                spreadRadius: 2.0,
                offset: const Offset(2.0, 2.0),
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              // Home icon
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'images/home.png',
                    height: 24,
                    width: 24,
                  ),
                  const SizedBox(height: 4),
                  const Text(
                    'Home',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              // Notification icon
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'images/notif.png',
                    height: 24,
                    width: 24,
                  ),
                  const SizedBox(height: 4),
                  const Text(
                    'Notif',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              // Transaction icon
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const TransactionProsesPage(),
                    ),
                  );
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'images/arrow_nav.png',
                      height: 24,
                      width: 24,
                    ),
                    const SizedBox(height: 4),
                    const Text(
                      'Transaction',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              // Profile icon
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'images/person_nav.png',
                    height: 24,
                    width: 24,
                  ),
                  const SizedBox(height: 4),
                  const Text(
                    'Profile',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
