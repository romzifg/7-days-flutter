import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class RatingPage extends StatefulWidget {
  @override
  State<RatingPage> createState() => _RatingPageState();
}

class _RatingPageState extends State<RatingPage> {
  int cekValue1 = 0;
  int cekValue2 = 0;
  int cekValue3 = 0;
  int cekValue4 = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff181925),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 80.0, left: 88.0, right: 88.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/pizza.png',
                  width: 200.w,
                ),
                SizedBox(
                  height: 20.h,
                ),
                Text(
                  'Pizza Balado',
                  style: GoogleFonts.poppins(
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 4.0.h,
                ),
                Text(
                  "\$90.00",
                  style: GoogleFonts.poppins(
                    fontSize: 18.sp,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 90.h,
          ),
          Container(
            padding: const EdgeInsets.only(left: 35.0, right: 35.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Was it delicious?',
                  textAlign: TextAlign.start,
                  style: GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 20.0.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          cekValue1 = 1;
                        });
                      },
                      child: Container(
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color:
                              cekValue1 == 1 ? Colors.white : Color(0xff37394D),
                          shape: BoxShape.circle,
                        ),
                        width: 55.0.w,
                        height: 55.0.h,
                        child: Image.asset(
                          'assets/emoji_angry.png',
                          width: 8.0,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20.0.w,
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          cekValue2 = 1;
                        });
                      },
                      child: Container(
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color:
                              cekValue2 == 1 ? Colors.white : Color(0xff37394D),
                          shape: BoxShape.circle,
                        ),
                        width: 55.0.w,
                        height: 55.0.h,
                        child: Image.asset(
                          'assets/emoji_sad.png',
                          width: 8.0.w,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20.0.w,
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          cekValue3 = 1;
                        });
                      },
                      child: Container(
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color:
                              cekValue3 == 1 ? Colors.white : Color(0xff37394D),
                          shape: BoxShape.circle,
                        ),
                        width: 55.0.w,
                        height: 55.0.h,
                        child: Image.asset(
                          'assets/emoji_laugh.png',
                          width: 8.0.w,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20.0.w,
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          cekValue4 == 1;
                        });
                      },
                      child: Container(
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color:
                              cekValue4 == 1 ? Colors.white : Color(0xff37394D),
                          shape: BoxShape.circle,
                        ),
                        width: 55.0.w,
                        height: 55.0.h,
                        child: Image.asset(
                          'assets/emoji_like.png',
                          width: 8.0.w,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 90.0.h,
                ),
                Center(
                  child: SizedBox(
                    width: 211.0,
                    height: 55.0,
                    child: TextButton(
                      child: Text(
                        'Rate Now',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        backgroundColor: const Color(0xff34D186),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(60),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
