import 'dart:async';

import 'package:dajek/login/onboarding1.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 5), () {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const Onboarding1(),
          ));
    });
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 80),
            child: Image(
              image: AssetImage(
                "images/dajek2.png",
              ),
              width: 224.77,
              height: 79.83,
            ),
          ),
          Center(
            child: Text(
              "Ojeknyo Rank Ranah Minang",
              style: GoogleFonts.ubuntu(
                fontSize: 20.55,
                fontWeight: FontWeight.w400,
                color: Colors.grey[500]
              ),
            ),
          )
        ],
      ),
    );
  }
}
