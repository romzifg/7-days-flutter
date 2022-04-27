import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FirstStarted extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/background_started.png'),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 527.0,
              right: 75,
              left: 75,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Maximize Revenue',
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 17,
                ),
                Text(
                  'Gain more profit from cryptocurrency without any risk involved',
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 50,
                ),
                InkWell(
                  onTap: () {
                    print('oke');
                  },
                  child: Image.asset(
                    'assets/btn_purple.png',
                    width: 80.0,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
