import 'package:flutter/material.dart';

import '../widgets/drawer.dart';

class HomePage extends StatelessWidget {
  final String name = 'Deepanshu';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Catalog App',
          textAlign: TextAlign.center,
        ),
      ),
      body: Center(
        child: Container(
          child: Text("Hello $name here... Welcome to my first App !! "),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
