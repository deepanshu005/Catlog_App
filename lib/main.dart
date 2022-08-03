import 'package:CATALOG/core/store.dart';
import 'package:CATALOG/pages/cart_page.dart';
import 'package:CATALOG/pages/login_page.dart';
import 'package:CATALOG/utils/routes.dart';
import 'package:CATALOG/widgets/themes.dart';
import 'package:flutter/material.dart';
import 'package:CATALOG/pages/home_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

void main() {
  runApp(VxState(store: MyStore(), child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // context holds the information of widget's loacation
    return MaterialApp(
      themeMode: ThemeMode.system,
      theme: MyTheme.lightTheme(context),
      debugShowCheckedModeBanner:
          false, // to remove debug banner from right top corner
      darkTheme: MyTheme.darkTheme(context),

      initialRoute:
          MyRoutes.homeRoute, // initially this will be the bydefault page
      routes: {
        // it needs map
        "/": (context) => LoginPage(), // Bydefault will be login page
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
        MyRoutes.cartRoute: (context) => CartPage(),
      },
    );
  }
}
