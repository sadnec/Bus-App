import 'package:quotes/pages/book_ticket.dart';
import 'package:quotes/pages/home_screen.dart';
import 'package:quotes/pages/login/login_page.dart';
import 'package:quotes/utils/consts.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(VeppoApp());
}

class VeppoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Montserrat',
        scaffoldBackgroundColor: Colors.white,
        primarySwatch: white,
        hintColor: Colors.transparent,
        focusColor: Colors.transparent,
        hoverColor: Colors.transparent,
        indicatorColor: Colors.transparent,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
      ),
      home: LoginPage(),
    );
  }
}
