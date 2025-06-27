import 'package:dajek/food_order/home_food.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'detail_food.dart';

class NearbyFood extends StatefulWidget {
  const NearbyFood({Key? key}) : super(key: key);

  @override
  State<NearbyFood> createState() => _NearbyFoodState();
}

class _NearbyFoodState extends State<NearbyFood> {
  List<Map<String, dynamic>> listImg = [
    {
      "gambar": "images/Rectangle 28 (1).png",
      "teks": "Ayam geprek Iwak \n Peyek",
      "harga": "IDR 500.000",
      "icon": "images/star.png",
      "rating": "5.5",
    },
    {
      "gambar": "images/Rectangle 28 (2).png",
      "teks": "Ayam geprek Iwak \n Peyek",
      "harga": "IDR 500.000",
      "icon": "images/star.png",
      "rating": "5.5",
    },
    {
      "gambar": "images/Rectangle 28 (3).png",
      "teks": "Ayam geprek Iwak \n Peyek",
      "harga": "IDR 500.000",
      "icon": "images/star.png",
      "rating": "5.5",
    },
    {
      "gambar": "images/Rectangle 28 (4).png",
      "teks": "Ayam geprek Iwak \n Peyek",
      "harga": "IDR 500.000",
      "icon": "images/star.png",
      "rating": "5.5",
    },
    {
      "gambar": "images/Rectangle 28 (5).png",
      "teks": "Ayam geprek Iwak \n Peyek",
      "harga": "IDR 500.000",
      "icon": "images/star.png",
      "rating": "5.5",
    },
    {
      "gambar": "images/Rectangle 28 (6).png",
      "teks": "Ayam geprek Iwak \n Peyek",
      "harga": "IDR 500.000",
      "icon": "images/star.png",
      "rating": "5.5",
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const HomePageFood(),
                ));
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
        title: Text(
          "Nearby",
          style: GoogleFonts.roboto(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: Colors.grey[600],
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
            child: Container(
              height: 56,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.grey.shade100,
              ),
              child: Row(
                children:  [
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
                    "Find your favorite food today...",
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
          const SizedBox(
            height: 40,
          ),
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 20.0,
                mainAxisSpacing: 20.0,
              ),
              itemCount: listImg.length,
              itemBuilder: (context, index) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: InkWell(
                        onTap: () {
                         Navigator.push(context, MaterialPageRoute(builder: (context) => const DetailFood(),));
                        },
                        child: Image.asset(
                          listImg[index]["gambar"],
                          height: 92,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      listImg[index]["teks"],
                      style:GoogleFonts.roboto(
                        fontSize: 16,
                        fontWeight: FontWeight.w400
                      ),
                    ),
                    // const SizedBox(height: 4),
                    Row(
                      children: [
                        Text(
                          listImg[index]["harga"],
                          style: GoogleFonts.roboto(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: const Color(0xFFFF4E4E),
                          ),
                        ),
                        const Spacer(),
                        Row(
                          children: [
                            Image.asset(
                              listImg[index]["icon"],
                              height: 16,
                              width: 16,
                            ),
                            const SizedBox(width: 4),
                            Text(
                              listImg[index]["rating"],
                              style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
