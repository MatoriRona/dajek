import 'dart:async';

import 'package:dajek/ride_car_order/mapbox_dirver_Found47.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapboxSearchDrive44 extends StatefulWidget {
  const MapboxSearchDrive44({super.key});

  @override
  State<MapboxSearchDrive44> createState() => _MapboxSearchDrive44State();
}

class _MapboxSearchDrive44State extends State<MapboxSearchDrive44> {
  final List<Marker> _markers = <Marker>[
    const Marker(
      markerId: MarkerId('end'),
      position: LatLng(1.1183862391374704, 103.97843471543898),
    ),
  ];

  CameraPosition kInitialPosition = const CameraPosition(
    target: LatLng(1.1183717464588336, 103.9783899753476),
    zoom: 14.4746,
  );

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 3), () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => const MapboxDriverFound47(),));
    });
    return Scaffold(
      body: Stack(
        children: [
          GoogleMap(
            mapType: MapType.terrain,
            markers: Set.from(_markers),
            initialCameraPosition: kInitialPosition,
          ),
          Container(
            color: Colors.grey.withOpacity(0.20),
          )
        ],
      ),
      bottomNavigationBar: Container(
        height: 205,
        width: 411,
        decoration: const BoxDecoration(
          color: Color(0xFFFFFFFF),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(24),
            topRight: Radius.circular(24),
          ),
          boxShadow: [
            BoxShadow(
              blurRadius: 9,
              color: Colors.grey,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 40, top: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Searching Driver...",
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(331, 56),
                  side: const BorderSide(color: Color(0xFFE11717)),
                ),
                onPressed: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) => const CheckoutFood(),
                  //   ),
                  // );
                },
                child: Text(
                  "Cancel",
                  style: GoogleFonts.roboto(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xFFE11717),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
