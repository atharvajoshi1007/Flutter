import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:velocity_x/velocity_x.dart';

import '../models/catolog.dart';

class HomeDetailPage extends StatelessWidget {
  final Item catalog;

  const HomeDetailPage({Key? key, required this.catalog})
      : assert(catalog != null),
        super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
      ),
      backgroundColor: Color.fromARGB(255, 244, 255, 242),
      bottomNavigationBar: Container(
        color: Color.fromARGB(255, 239, 239, 239),
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          buttonPadding: EdgeInsets.zero,
          children: [
            "\Rs.${catalog.price}".text.bold.xl4.green500.make(),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                      Color.fromARGB(255, 58, 163, 62)),
                  shape: MaterialStateProperty.all(StadiumBorder())),
              child: "Buy".text.make(),
            ).wh(100, 50)
          ],
        ).p32(),
      ),
      //backgroundColor: Colors.black,  //changes page color
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Hero(
              tag: Key(catalog.id.toString()),
              child: Image.network(catalog.image),
            ),
            Expanded(
              child: VxArc(
                height: 30,
                arcType: VxArcType.CONVEY, //container bottom arc below image,
                edge: VxEdge.TOP,

                child: Container(
                  color: Color.fromARGB(218, 76, 175, 79),
                  width: context.screenWidth,
                  child: Column(
                    children: [
                      catalog.name.text.xl4.bold.color(Colors.white).xl.make(),
                      catalog.desc.text
                          .textStyle(context.captionStyle)
                          .color(Colors.white)
                          .make(),
                      10.heightBox,
                    ],
                  ).py32(),
                ),
              ),
            ),
          ],
        ).p24(),
      ),
    );
  }
}
