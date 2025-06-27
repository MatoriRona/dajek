import 'dart:async';

import 'package:dajek/food_order/home_food.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapboxDeliveringOrder50 extends StatefulWidget {
  const MapboxDeliveringOrder50({super.key});

  @override
  State<MapboxDeliveringOrder50> createState() =>
      _MapboxDeliveringOrder50State();
}

class _MapboxDeliveringOrder50State extends State<MapboxDeliveringOrder50> {
  @override
  Widget build(BuildContext context) {
     final List<Marker> _markers = <Marker>[
     Marker(
      markerId: const MarkerId('start'),
      position: const LatLng(1.1181252599186915, 103.9774653956299),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueOrange), // Set marker color to black
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

   const CameraPosition _kInitialPosition = CameraPosition(
    target: LatLng(1.1183717464588336, 103.9783899753476),
    zoom: 14.4746,
  );
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
        height: 443,
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
              )
            ]),
        child: Padding(
          padding: const EdgeInsets.only(left: 40, top: 30, right: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Status Ordering",
                style: GoogleFonts.roboto(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              ListTile(
                leading: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.pink.withOpacity(0.1)),
                  child: Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: Image.asset(
                      "images/arow_repeat.png",
                      color: const Color(0xFFE11717),
                    ),
                  ),
                ),
                title: Text(
                  "Processing order",
                  style: GoogleFonts.roboto(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xFF000000),
                  ),
                ),
                subtitle: Text(
                  "Your order is being processed...",
                  style: GoogleFonts.roboto(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey.shade500,
                  ),
                ),
              ),
              const SizedBox(
                height: 9,
              ),
              const Divider(
                thickness: 1,
              ),
              const SizedBox(
                height: 9,
              ),
              ListTile(
                leading: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.pink.withOpacity(0.1)),
                  child: Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: Image.asset(
                      "images/Group (1).png",
                      color: const Color(0xFFE11717),
                    ),
                  ),
                ),
                title: Text(
                  "Preparing order",
                  style: GoogleFonts.roboto(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xFF000000),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Divider(
                thickness: 1,
              ),
              const SizedBox(
                height: 9,
              ),
              ListTile(
                leading: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.pink.withOpacity(0.1)),
                  child: Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: Image.asset(
                      "images/Vector (12).png",
                      color: const Color(0xFFE11717),
                    ),
                  ),
                ),
                title: Text(
                  "Delivering order",
                  style: GoogleFonts.roboto(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey.shade500,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(331, 56),
                  backgroundColor: const Color(0xFFE11717)
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const HomePageFood(),));
                },
                child: Text(
                  "Back",
                  style: GoogleFonts.roboto(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xFFFFFFFF)
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
