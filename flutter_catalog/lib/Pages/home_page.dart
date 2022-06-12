import 'package:flutter/material.dart';

import '../widgets/drawer.dart';

class HomePage extends StatelessWidget {
  int days = 30;
  String name = "Perceptron";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Catalog App"),
      ),
      body: Center(
        child: Container(
          child: Text("Welcome $name to $days days to Flutter"),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
