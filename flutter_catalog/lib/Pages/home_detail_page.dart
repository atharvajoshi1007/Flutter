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
        title: "Know Farming".text.make().px64(),
        backgroundColor: Colors.green,
        iconTheme: IconThemeData(
          color: Color.fromARGB(255, 255, 255, 255),
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
              child: "Add to Cart".text.make(),
            ).wh(120, 50)
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
                      "Yet wandering my a my it or the. There said a adore the loneliness lattice god. Nothing though kind being core raven, grave chamber louder divining by name. Linking above pallas fowl beak some, lenore outpour the being sitting grew with a to tempest, nothing this divining while within rustling."
                          .text
                          .textStyle(context.captionStyle)
                          .color(Colors.white)
                          .size(12)
                          .make()
                          .p16()
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
