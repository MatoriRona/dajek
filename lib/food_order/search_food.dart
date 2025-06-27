import 'package:dajek/food_order/home_food.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchFood extends StatefulWidget {
  const SearchFood({super.key});

  @override
  State<SearchFood> createState() => _SearchFoodState();
}

class _SearchFoodState extends State<SearchFood> {
  @override
  Widget build(BuildContext context) {
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
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 40, top: 40, right: 40),
            child: Container(
              height: 56,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.grey.shade100,
              ),
              child: ListTile(
                leading: const Image(
                  image: AssetImage(
                    "images/search.png",
                  ),
                  height: 24,
                  width: 24,
                ),
                title: Text(
                  "Ayam Geprek",
                  style: GoogleFonts.roboto(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey.shade500),
                ),
                trailing: IconButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const HomePageFood(),));
                  },
                  icon:  Icon(
                    Icons.close,
                    color: Colors.grey.shade500,
                  ),
                ),
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
                      child: Image.asset(
                        listImg[index]["gambar"],
                        height: 92,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      listImg[index]["teks"],
                      style: GoogleFonts.roboto(
                          fontSize: 16, fontWeight: FontWeight.w400),
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
