import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapboxDriverPickup48 extends StatefulWidget {
  const MapboxDriverPickup48({super.key});

  @override
  State<MapboxDriverPickup48> createState() => _MapboxDriverPickup48State();
}

class _MapboxDriverPickup48State extends State<MapboxDriverPickup48> {
  final List<Marker> _markers = <Marker>[
    Marker(
      markerId: const MarkerId('start'),
      position: const LatLng(1.1181252599186915, 103.9774653956299),
      icon: BitmapDescriptor.defaultMarkerWithHue(
          BitmapDescriptor.hueOrange), // Set marker color to black
      infoWindow: const InfoWindow(
        title: 'Titik Awal',
      ),
    ),
    const Marker(
      markerId: MarkerId('end'),
      position: LatLng(1.1183862391374704, 103.97843471543898),
      infoWindow: InfoWindow(
        title: 'Titik Akhir',
      ),
    ),
  ];

  final List<Polyline> _polylines = <Polyline>[
    const Polyline(
      polylineId: PolylineId('route'),
      color: Colors.blue,
      width: 5,
      points: [
        LatLng(1.1181506710004705, 103.97746884988322), // Titik awal
        LatLng(1.1178229208222912, 103.97744763848098), //
        LatLng(1.1178336379355065, 103.97809060253644), //
        LatLng(1.1186326564901288, 103.97808783716727), //
        LatLng(1.118622499154194, 103.97844240856746), //
        LatLng(1.118386469301745, 103.97843863415505), // Titik akhir
      ],
    ),
  ];

  final Completer<GoogleMapController> _controller = Completer();

  static const CameraPosition _kInitialPosition = CameraPosition(
    target: LatLng(1.1183717464588336, 103.9783899753476),
    zoom: 14.4746,
  );
  @override
   Widget build(BuildContext context) {
    // Timer(const Duration(seconds: 3), () {
    //   Navigator.push(context, MaterialPageRoute(builder: (context) => const MapboxTripOver38(),));
    //  });
    return Scaffold(
       body: GoogleMap(
        polylines: Set.from(_polylines),
        mapType: MapType.normal,
        initialCameraPosition: _kInitialPosition,
        markers: Set.from(_markers),
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
      ),
      bottomNavigationBar: Container(
        height: 275,
        width: 411,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(24),
            topRight: Radius.circular(24),
          ),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 8,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 30, top: 19),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Drivers Pickup",
                style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.black87),
              ),
              const SizedBox(
                height: 19,
              ),
              Container(
                width: 340,
                height: 90,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(16),
                    color: const Color(0xFFFFFFFF)),
                child: Padding(
                  padding: const EdgeInsets.all(7.0),
                  child: Row(
                    children: [
                      ClipOval(
                        child: Image.asset(
                          "images/driver.png",
                          fit: BoxFit.cover,
                          width: 64,
                          height: 64,
                        ),
                      ),
                      const SizedBox(width: 16),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "B2021 ABC",
                            style: GoogleFonts.roboto(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: const Color(0xFF000000)),
                          ),
                          Text(
                            "Farahan Shibab - 10 Minutes duration",
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: GoogleFonts.roboto(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Colors.grey.shade500),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 60, right: 69),
                child: Row(
                  children: [
                    const Image(
                      image: AssetImage(
                        "images/phone.png",
                      ),
                      height: 16.25,
                      width: 16.26,
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Text(
                      "Call",
                      style: GoogleFonts.poppins(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey.shade400),
                    ),
                    const SizedBox(
                      width: 90,
                    ),
                     const Image(
                      image: AssetImage(
                        "images/chat.png",
                      ),
                      height: 16.25,
                      width: 16.26,
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Text(
                      "Chat",
                      style: GoogleFonts.poppins(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey.shade400),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}