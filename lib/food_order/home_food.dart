import 'package:dajek/food_order/nearby_food.dart';
import 'package:dajek/food_order/search_food.dart';
import 'package:dajek/transaction/transaction_proses.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePageFood extends StatefulWidget {
  const HomePageFood({Key? key});

  @override
  State<HomePageFood> createState() => _HomePageFoodState();
}

class _HomePageFoodState extends State<HomePageFood> {
  final List<Map<String, dynamic>> _listCont = [
    {
      "gambar": "images/nearby.png",
      "teks": "Nearby",
      "route": const NearbyFood(),
    },
    {
      "gambar": "images/promo.png",
      "teks": "Promo",
    },
    {
      "gambar": "images/vaforite.png",
      "teks": "Vaforite",
    },
    {
      "gambar": "images/more.png",
      "teks": "More",
    },
    //  {
    //   "image": "images/more.png",
    //   "text": "Ayam geprek Iwak Peyek",
    //   "harga" : "IDR 500.000"
    // },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_back_ios,
          ),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  "My location",
                  style: GoogleFonts.poppins(
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey.shade600,
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                const Image(
                  image: AssetImage("images/arrow_down.png"),
                  height: 10,
                  width: 10,
                ),
              ],
            ),
            Text(
              "Jl South Tangsel",
              style: GoogleFonts.roboto(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: const Color(0xFF000000),
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 40, top: 31, right: 40),
            child: InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const SearchFood(),));
              },
              child: Container(
                height: 56,
                width: 331,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(8)),
                  color: Colors.grey.shade100,
                ),
                child: Row(
                  children: [
                    const Padding(padding: EdgeInsets.all(8)),
                    const Image(
                      image: AssetImage(
                        "images/search.png",
                      ),
                      height: 24,
                      width: 24,
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Text(
                      "Find your favorite foos today...",
                      style: GoogleFonts.roboto(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey.shade400,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const Image(
            image: AssetImage(
              "images/diskon.png",
            ),
            width: 331,
            height: 163,
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: _listCont.map((item) {
              return GestureDetector(
                onTap: () {
                  if (item['route'] != null) {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => item['route'],));
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
                    const SizedBox(
                      height: 40,
                    ),
                  ],
                ),
              );
            }).toList(),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 26, right: 10),
            child: ListTile(
              leading: Text(
                "Popular Todays",
                style: GoogleFonts.roboto(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
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
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 40,
            ),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Image(
                      image: AssetImage(
                        "images/Rectangle 28 (1).png",
                      ),
                      height: 92,
                      width: 155,
                    ),
                    Text(
                      "Ayam geprek Iwak \n Peyek",
                      style: GoogleFonts.roboto(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Colors.black87,
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Text(
                            "IDR 500.000",
                            style: GoogleFonts.roboto(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: const Color(0xFFFF4E4E)),
                          ),
                        ),
                        const SizedBox(
                          width: 57,
                        ),
                        const Icon(
                          Icons.star,
                          size: 10,
                          color: Colors.amber,
                        ),
                        Text(
                          "5.5",
                          style: GoogleFonts.roboto(
                            fontSize: 8,
                            fontWeight: FontWeight.w500,
                            color: Colors.black87,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  width: 32,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Image(
                      image: AssetImage(
                        "images/Rectangle 28 (1).png",
                      ),
                      height: 92,
                      width: 155,
                    ),
                    Text(
                      "Ayam geprek Iwak \n Peyek",
                      style: GoogleFonts.roboto(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Colors.black87,
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Text(
                            "IDR 500.000",
                            style: GoogleFonts.roboto(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: const Color(0xFFFF4E4E)),
                          ),
                        ),
                        const SizedBox(
                          width: 53,
                        ),
                        const Icon(
                          Icons.star,
                          size: 10,
                          color: Colors.amber,
                        ),
                        Text(
                          "5.5",
                          style: GoogleFonts.roboto(
                            fontSize: 8,
                            fontWeight: FontWeight.w500,
                            color: Colors.black87,
                          ),
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Padding(
        padding:
            const EdgeInsets.only(top: 10,  ),
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
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const TransactionProsesPage(),));
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
