import 'package:dajek/food_order/mapbox_search_driver43.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SuccessPage extends StatefulWidget {
  const SuccessPage({super.key});

  @override
  State<SuccessPage> createState() => _SuccessPageState();
}

class _SuccessPageState extends State<SuccessPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Container(
              height: 120,
              width: 120,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: Color(0xFF85DE6F)),
              child: const Image(image: AssetImage("images/chcek.png")),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Text(
            "Success",
            style: GoogleFonts.poppins(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: Colors.black87,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            "You have successfully ordered",
            style: GoogleFonts.poppins(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Colors.grey.shade500,
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              minimumSize: const Size(200, 56),
              backgroundColor: const Color(0xFFE11717)
            ),
            onPressed: () {
              Navigator.push(context,MaterialPageRoute(builder: (context) => const MapboxSearchDrive43(),));
            },
            child: Text(
              "Close",
              style: GoogleFonts.roboto(
                fontSize: 14,
                fontWeight: FontWeight.w700,
                color:  const Color(0xFFFFFFFF)
              ),
            ),
          )
        ],
      ),
    );
  }
}
