import 'package:dajek/food_order/checkout_food.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PaymentPageFood extends StatefulWidget {
  const PaymentPageFood({super.key});

  @override
  State<PaymentPageFood> createState() => _PaymentPageFoodState();
}

class _PaymentPageFoodState extends State<PaymentPageFood> {
  int _selectedPaymentMethod = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            // Navigator.push(context, MaterialPageRoute(builder: (context) => const MapboxOrder25(),));
          },
          icon:const Icon(Icons.arrow_back_ios_new_rounded),
        ),
        title: Text(
          "Payment Method",
          style: GoogleFonts.roboto(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: const Color(0xFF000000),
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: ListTile(
              leading: Container(
                height: 50,
                width: 50,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                  color: Color(0xFFF2F2F2),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Image(
                    image: AssetImage(
                      "images/dana.png",
                    ),
                  ),
                ),
              ),
              title: Text(
                "Dana",
                style: GoogleFonts.roboto(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xFF000000),
                ),
              ),
              subtitle: Text(
                "Balance: Rp10.000",
                style: GoogleFonts.roboto(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xFF4F4F4F),
                ),
              ),
              trailing: Radio<int>(
                value: 0,
                groupValue: _selectedPaymentMethod,
                onChanged: (value) {
                  setState(() {
                    _selectedPaymentMethod = value!;
                  });
                },
              ),
            ),
          ),
          ListTile(
            leading: Container(
              height: 50,
              width: 50,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(8)),
                color: Color(0xFFF2F2F2),
              ),
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Image(
                  image: AssetImage(
                    "images/gopay.png",
                  ),
                ),
              ),
            ),
            title: Text(
              "Gopay",
              style: GoogleFonts.roboto(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: const Color(0xFF000000),
              ),
            ),
            subtitle: Text(
              "Balance: Rp10.000",
              style: GoogleFonts.roboto(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: const Color(0xFF4F4F4F),
              ),
            ),
            trailing: Radio<int>(
              value: 1,
              groupValue: _selectedPaymentMethod,
              onChanged: (value) {
                setState(() {
                  _selectedPaymentMethod = value!;
                });
              },
            ),
          ),
          ListTile(
            leading: Container(
              height: 50,
              width: 50,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(8)),
                color: Color(0xFFF2F2F2),
              ),
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Image(
                  image: AssetImage(
                    "images/link.png",
                  ),
                ),
              ),
            ),
            title: Text(
              "Link Aja",
              style: GoogleFonts.roboto(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: const Color(0xFF000000),
              ),
            ),
            subtitle: Text(
              "Balance: Rp10.000",
              style: GoogleFonts.roboto(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: const Color(0xFF4F4F4F),
              ),
            ),
            trailing: Radio<int>(
              value: 2,
              groupValue: _selectedPaymentMethod,
              onChanged: (value) {
                setState(() {
                  _selectedPaymentMethod = value!;
                });
              },
            ),
          ),
          ListTile(
            leading: Container(
              height: 50,
              width: 50,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(8)),
                color: Color(0xFFF2F2F2),
              ),
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Image(
                  image: AssetImage(
                    "images/ovo.png",
                  ),
                ),
              ),
            ),
            title: Text(
              "OVO",
              style: GoogleFonts.roboto(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: const Color(0xFF000000),
              ),
            ),
            subtitle: Text(
              "Balance: Rp10.000",
              style: GoogleFonts.roboto(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: const Color(0xFF4F4F4F),
              ),
            ),
            trailing: Radio<int>(
              value: 3,
              groupValue: _selectedPaymentMethod,
              onChanged: (value) {
                setState(() {
                  _selectedPaymentMethod = value!;
                });
              },
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                minimumSize: const Size(331, 56),
                backgroundColor: const Color(0xFFE11717)),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CheckoutFood(),
                  ));
            },
            child: Text(
              "Save",
              style: GoogleFonts.roboto(
                fontSize: 14,
                fontWeight: FontWeight.w700,
                color: const Color(0xFFFFFFFF),
              ),
            ),
          )
        ],
      ),
    );
  }
}
