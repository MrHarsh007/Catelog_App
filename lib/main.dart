import 'package:flutter/material.dart';
import 'package:Catelog_App/pages/cart_page.dart';
import 'package:Catelog_App/pages/home_page.dart';
import 'package:Catelog_App/pages/productPage.dart';
import 'package:Catelog_App/utilis/routes.dart';
import 'pages/login_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_windowmanager/flutter_windowmanager.dart';

void main() {
  runApp(const MyApp());
  disableCapture();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: GoogleFonts.poppins().fontFamily,
      ),
      darkTheme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        "/": (context) => LoginPage(),
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
        MyRoutes.cartRoutes: (context) => CartPage(),
      },
    );
  }
}

disableCapture() async {
  await FlutterWindowManager.addFlags(FlutterWindowManager.FLAG_SECURE);
}
