import 'package:codepur/pages/login_page.dart';
import 'package:codepur/utils/routes.dart';
import 'package:codepur/widgets/themes.dart';
import 'package:flutter/material.dart';
import 'package:codepur/pages/home_page.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // context holds the information of widget's loacation
    return MaterialApp(
      themeMode: ThemeMode.light,
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
      },
    );
  }
}
