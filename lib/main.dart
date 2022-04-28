import 'package:flutter/material.dart';
import 'package:flutter_7_days/pages/empty_pages.dart';
import 'package:flutter_7_days/pages/first_signin.dart';
import 'package:flutter_7_days/pages/first_started.dart';
import 'package:flutter_7_days/pages/rating_pages.dart';
import 'package:flutter_7_days/pages/second_started.dart';
import 'package:flutter_7_days/pages/spalsh_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() => runApp(SevenDays());

class SevenDays extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: RatingPage(),
        );
      },
    );
  }
}
