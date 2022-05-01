import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CartList extends StatelessWidget {
  String imageUrl;
  String amount;
  String food;
  String place;
  String pricing;

  CartList({
    required this.imageUrl,
    required this.amount,
    required this.food,
    required this.place,
    required this.pricing,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 315.0,
      height: 140.0,
      decoration: BoxDecoration(
        color: const Color(0xffffffff),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 10,
              left: 10,
            ),
            child: Column(
              children: [
                Image.asset(
                  imageUrl,
                  width: 80.0,
                ),
                const SizedBox(
                  height: 12.0,
                ),
                Row(
                  children: [
                    Image.asset(
                      'assets/ic_min.png',
                      width: 22,
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Text(
                      amount,
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Image.asset(
                      'assets/ic_plus.png',
                      width: 22,
                    ),
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 26,
              left: 16,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  food,
                  style: GoogleFonts.poppins(
                    color: const Color(0xff191919),
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  place,
                  style: GoogleFonts.poppins(
                    color: const Color(0xffA3A8B8),
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                const SizedBox(
                  height: 28.0,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 102.0, right: 10.0),
            child: Text(
              pricing,
              style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: const Color(0xff191919),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
