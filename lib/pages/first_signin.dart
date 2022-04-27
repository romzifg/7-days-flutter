import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class FirstSignIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff181A20),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 70.0, left: 40.0, right: 40.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset('assets/ic_coin.png', width: 50.0.w),
              SizedBox(
                height: 70.0.h,
              ),
              Text(
                'Welcome back. \nLets make money',
                style: GoogleFonts.poppins(
                    color: const Color(0xffffffff),
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 70.0.h,
              ),
              TextFormField(
                style: GoogleFonts.openSans(color: Colors.white),
                decoration: InputDecoration(
                  fillColor: const Color(0xff262A34),
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(17),
                    borderSide: BorderSide.none,
                  ),
                  hintText: 'Email',
                  hintStyle: GoogleFonts.openSans(
                    color: const Color(0xff6F7075),
                  ),
                ),
              ),
              SizedBox(
                height: 20.0.h,
              ),
              TextFormField(
                obscureText: true,
                style: GoogleFonts.openSans(color: Colors.white),
                decoration: InputDecoration(
                  fillColor: const Color(0xff262A34),
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(17),
                    borderSide: BorderSide.none,
                  ),
                  hintText: 'Password',
                  hintStyle: GoogleFonts.openSans(
                    color: const Color(0xff6F7075),
                  ),
                  suffixIcon: const Icon(
                    Icons.visibility,
                    color: const Color(0xff6F7075),
                  ),
                ),
              ),
              SizedBox(
                height: 6.0.h,
              ),
              Container(
                alignment: const Alignment(1, 0.5),
                child: Text(
                  'Forgot My Password',
                  style: GoogleFonts.poppins(
                    color: const Color(0xff6A6B70),
                  ),
                ),
              ),
              SizedBox(
                height: 117.0.h,
              ),
              Container(
                width: 295.0.h,
                height: 55.0.w,
                child: TextButton(
                  onPressed: () {
                    print('halooo');
                  },
                  child: Text(
                    'Sign In',
                    style: GoogleFonts.openSans(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xff6B4909),
                    ),
                  ),
                  style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(17),
                      ),
                      backgroundColor: const Color(0xfffcac15)),
                ),
              ),
              SizedBox(
                height: 30.0.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Don't have account ? ",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      print('Sign Up');
                    },
                    child: const Text(
                      "Sign Up",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20.0.h),
            ],
          ),
        ),
      ),
    );
  }
}
