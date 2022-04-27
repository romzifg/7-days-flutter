import 'package:flutter/material.dart';
import 'package:flutter_7_days/pages/first_signin.dart';
import 'package:flutter_7_days/pages/first_started.dart';
import 'package:flutter_7_days/pages/second_started.dart';
import 'package:flutter_7_days/pages/spalsh_screen.dart';

void main() => runApp(SevenDays());

class SevenDays extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstSignIn(),
    );
  }
}
