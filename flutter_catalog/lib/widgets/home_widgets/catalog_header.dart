import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';


class CatalogHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        "Know Farming".text.xl5.bold.color(Colors.green).make(),
        "Today's Rates".text.xl2.lineHeight(2).make(),
      ],
    );
  }
}