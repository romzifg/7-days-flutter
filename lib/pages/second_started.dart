import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SecondStarted extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Health First.',
              style: GoogleFonts.poppins(
                fontSize: 24,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              height: 16.0,
            ),
            SizedBox(
              width: 250,
              child: Text(
                'Exercise together with out best community fit in the world',
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  color: const Color(0xff828284),
                ),
              ),
            ),
            const SizedBox(
              height: 60.0,
            ),
            Image.asset('assets/gallery.png'),
            const SizedBox(height: 70.0),
            SizedBox(
              width: 300.0,
              height: 50.0,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: const Color(0xffafea0d),
                ),
                onPressed: () {
                  print('Shape My Body');
                },
                child: Text(
                  'Shape My Body',
                  style: GoogleFonts.lato(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Center(
              child: InkWell(
                onTap: () {
                  print('Terms & Conditions');
                },
                child: Text(
                  'Terms & Conditions',
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    color: const Color(0xff757575),
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
