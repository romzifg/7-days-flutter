import 'package:flutter/material.dart';
import 'package:flutter_7_days/widget/cart_list.dart';
import 'package:google_fonts/google_fonts.dart';

class FirstRandom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffafafa),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 45.0,
          left: 30.0,
          right: 30.0,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Text(
                  'My Shopping Cart',
                  style: GoogleFonts.poppins(
                    color: const Color(0xff191919),
                    fontSize: 22.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const SizedBox(height: 30.0),
              CartList(
                imageUrl: 'assets/burger.png',
                food: 'Burger Malleta',
                amount: '2',
                pricing: '\$90.00',
                place: 'McThone',
              ),
              const SizedBox(
                height: 26,
              ),
              CartList(
                imageUrl: 'assets/mojito.png',
                food: 'Mojito Orange',
                amount: '5',
                pricing: '\$510.00',
                place: 'The Bar',
              ),
              const SizedBox(
                height: 26,
              ),
              Container(
                padding: const EdgeInsets.all(16),
                width: 315,
                height: 161,
                decoration: BoxDecoration(
                  color: Color(0xffFFFFFF),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Informations',
                      style: GoogleFonts.poppins(
                        color: const Color(0xff191919),
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Sub Total',
                              style: GoogleFonts.poppins(
                                color: const Color(0xff191919),
                                fontSize: 16,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Delivery',
                              style: GoogleFonts.poppins(
                                color: const Color(0xff191919),
                                fontSize: 16,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Total',
                              style: GoogleFonts.poppins(
                                color: const Color(0xff191919),
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '\$600.00',
                              style: GoogleFonts.poppins(
                                color: const Color(0xff191919),
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              '\$80.00',
                              style: GoogleFonts.poppins(
                                color: const Color(0xff191919),
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              '\$680.00',
                              style: GoogleFonts.poppins(
                                color: const Color(0xff191919),
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 60,
              ),
              SizedBox(
                width: 327,
                height: 60,
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: const Color(0xffFFC532),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(55),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    "Checkout Now",
                    style: GoogleFonts.poppins(
                      color: const Color(0xff2E221B),
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              SizedBox(
                width: 327,
                height: 60,
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: const Color(0xffD9D9D9),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(55),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    "Save to Wishlist",
                    style: GoogleFonts.poppins(
                      color: const Color(0xffffffff),
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
