import 'dart:async';

import 'package:dajek/ride_car_order/mapbox_search_driver44.dart';
import 'package:dajek/ride_car_order/payment.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapboxOrder25 extends StatefulWidget {
  const MapboxOrder25({super.key});

  @override
  State<MapboxOrder25> createState() => _MapboxOrder25State();
}

class _MapboxOrder25State extends State<MapboxOrder25> {
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
    return Scaffold(
      body: Stack(
        children: [
          GoogleMap(
            polylines: Set.from(_polylines),
            mapType: MapType.normal,
            initialCameraPosition: _kInitialPosition,
            markers: Set.from(_markers),
            onMapCreated: (GoogleMapController controller) {
              _controller.complete(controller);
            },
          ),
          Positioned(
            top: 30,
            left: 30,
            right: 30,
            child: Container(
              height: 160,
              width: 351,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(16)),
                color: Color(0xFFFFFFFF),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    ListTile(
                      leading: const Image(
                        image: AssetImage(
                          "images/markerBlack.png",
                        ),
                        height: 16.67,
                        width: 13.33,
                      ),
                      title: Text(
                        "Jl Medan Merdeka, Jakarta Timur",
                        style: GoogleFonts.roboto(
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                            color: Colors.black54),
                      ),
                    ),
                    const Divider(
                      thickness: 2,
                      color: Colors.grey,
                    ),
                    ListTile(
                      leading: const Image(
                        image: AssetImage(
                          "images/markerRed.png",
                        ),
                        height: 16.67,
                        width: 13.33,
                      ),
                      title: Text(
                        "Jl Medan Merdeka, Jakarta Timur",
                        style: GoogleFonts.roboto(
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                            color: Colors.black54),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
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
          padding: const EdgeInsets.only(left: 40, top: 19),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Pembayaran",
                style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.black87),
              ),
              const SizedBox(
                height: 19,
              ),
              Container(
                width: 331,
                height: 90,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(16),
                    color: const Color(0xFFFFFFFF)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, top: 13, bottom: 20),
                  child: ListTile(
                    leading: Container(
                      height: 50,
                      width: 50,
                      decoration: const BoxDecoration(
                          color: Color(0xFFFAFAFA),
                          borderRadius: BorderRadius.all(Radius.circular(8))),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset("images/ovo.png"),
                      ),
                    ),
                    title: Text(
                      "Ovo",
                      style: GoogleFonts.roboto(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xFF000000)),
                    ),
                    subtitle: Text(
                      "Rp 23.000",
                      style: GoogleFonts.roboto(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey.shade500),
                    ),
                    trailing: IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const PaymentPage(),
                            ));
                      },
                      icon: const Icon(Icons.arrow_forward_ios_rounded),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    minimumSize: const Size(331, 56),
                    backgroundColor: const Color(0xFFE11717)),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MapboxSearchDrive44(),
                      ));
                },
                child: Text(
                  "Order Now",
                  style: GoogleFonts.roboto(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: const Color(0xFFFFFFFF)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
