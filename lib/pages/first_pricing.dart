import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FirstPricing extends StatefulWidget {
  @override
  State<FirstPricing> createState() => _FirstPricingState();
}

class _FirstPricingState extends State<FirstPricing> {
  int selectedIndex = -1;
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Padding(
        padding: const EdgeInsets.only(top: 50.0, left: 30.0, right: 30.0),
        child: Column(
          children: [
            Center(
              child: Image.asset(
                'assets/crown.png',
                width: 100,
              ),
            ),
            const SizedBox(
              height: 48.0,
            ),
            Text(
              'Which one your wish \nto Upgrade?',
              style: GoogleFonts.poppins(
                color: const Color(0xff191919),
                fontSize: 22.0,
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.center,
            )
          ],
        ),
      );
    }

    Widget option(
      int index,
      String imageUrl,
      String title,
      String desc,
      String subDesc,
    ) {
      return GestureDetector(
        onTap: () {
          setState(() {
            selectedIndex = index;
          });
        },
        child: Container(
          width: 315.0,
          height: 100.0,
          decoration: BoxDecoration(
            border: Border.all(
              color: selectedIndex == index
                  ? Color(0xff6050E7)
                  : Color(0xffd9deea),
            ),
            borderRadius: BorderRadius.circular(40),
          ),
          child: Padding(
            padding: const EdgeInsets.only(
              top: 16.0,
              bottom: 23.0,
              left: 17.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  imageUrl,
                  width: 66.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 10.0,
                    left: 7.0,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600,
                          fontSize: 16.0,
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            desc,
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w300,
                              color: Color(0xffA3A8B8),
                            ),
                          ),
                          const SizedBox(
                            width: 6,
                          ),
                          Text(
                            subDesc,
                            style: GoogleFonts.poppins(
                                color: Color(0xff5343C2),
                                fontWeight: FontWeight.w600),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 41.0,
                    right: 20.0,
                  ),
                  child: selectedIndex == index
                      ? Image.asset(
                          'assets/ic_check_purple.png',
                          width: 26.0,
                        )
                      : const SizedBox(
                          width: 26,
                        ),
                ),
              ],
            ),
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: Color(0xffffffff),
      body: SingleChildScrollView(
        child: Column(
          children: [
            header(),
            const SizedBox(
              height: 50,
            ),
            option(0, "assets/ic_pig.png", "Money Security", "support", "24/7"),
            const SizedBox(
              height: 24.0,
            ),
            option(1, "assets/ic_papper.png", "Automation", "we provide",
                "Invoice"),
            const SizedBox(
              height: 24.0,
            ),
            option(2, "assets/ic_dollar.png", "Balance Report", "can up to",
                "10k"),
            const SizedBox(
              height: 24.0,
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: const Color(0xff6050E7),
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(top: 15, left: 30.0),
              child: Text(
                'Upgrade Now',
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 18.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(
                top: 15.0,
                left: 60.0,
              ),
              child: Image.asset(
                'assets/right_arrow.png',
                width: 24.0,
              ),
            ),
            label: '',
          )
        ],
      ),
    );
  }
}
