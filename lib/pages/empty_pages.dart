import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class EmptyPages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 148,
            left: 66,
            right: 66,
            bottom: 149,
          ),
          child: Column(
            children: [
              Image.asset(
                'assets/shop_illustration.png',
                width: 240.w,
                height: 210.h,
              ),
              SizedBox(
                height: 100.h,
              ),
              Text(
                'Success Order',
                style: GoogleFonts.poppins(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: const Color(0xff0E1954)),
              ),
              SizedBox(
                height: 16.h,
              ),
              Text(
                'We will delivery your package as soon as possible',
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  color: const Color(0xff0E1954),
                ),
              ),
              SizedBox(
                height: 50.h,
              ),
              Container(
                height: 55.h,
                width: 200.h,
                child: TextButton(
                  child: Text(
                    'Done',
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(17),
                      ),
                      backgroundColor: const Color(0xffF94593)),
                  onPressed: () {},
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
