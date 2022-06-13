import 'package:flutter/material.dart';
import 'package:flutter_catalog/Pages/home_detail_page.dart';
import 'package:flutter_catalog/models/cart.dart';
import 'package:flutter_catalog/models/catolog.dart';
import 'package:velocity_x/velocity_x.dart';

import 'catalog_image.dart';

class CatalogList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: CatalogModel.items.length,
      itemBuilder: (context, index) {
        final catalog = CatalogModel.items[index];
        return InkWell(
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => HomeDetailPage(
                catalog: catalog,
                //catalog: CatalogModel.getById(2),
              ),
            ),
          ),
          child: CatalogItem(catalog: catalog),
        );
      },
    );
  }
}

class CatalogItem extends StatelessWidget {
  final Item catalog;
  const CatalogItem({Key? key, required this.catalog})
      : assert(catalog != Null),
        super(key: key);
  @override
  Widget build(BuildContext context) {
    return VxBox(
      child: Row(
        children: [
          Hero(
            tag: Key(catalog.id.toString()),
            child: CatalogImage(
              image: catalog.image,
            ),
          ),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              catalog.name.text.lg.bold.make(),
              catalog.desc.text.textStyle(context.captionStyle).make(),
              10.heightBox,
              ButtonBar(
                alignment: MainAxisAlignment.spaceBetween,
                buttonPadding: EdgeInsets.zero,
                children: [
                  "\Rs.${catalog.price}".text.bold.xl.make(),
                  _AddToCart(catalog:catalog)
                ],
              ).pOnly(right: 8.0)
            ],
          ))
        ],
      ),
    ).white.rounded.square(100).make().py16();
  }
}

class _AddToCart extends StatefulWidget {
  final Item catalog;
  const _AddToCart({
    Key? key, required this.catalog,
  }) : super(key: key);

  @override
  State<_AddToCart> createState() => _AddToCartState();
}

class _AddToCartState extends State<_AddToCart> {
  bool isAdded = false;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        isAdded = isAdded.toggle();
        final _catalog = CatalogModel();
        final _cart = CartModel();
        _cart.catalog=_catalog;
        _cart.add(widget.catalog);
        setState(() {});
      },
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(
              // ignore: prefer_const_constructors
              Color.fromARGB(255, 58, 163, 62)),
          shape: MaterialStateProperty.all(StadiumBorder())),
      child: isAdded ? Icon(Icons.done) : "Add to Cart".text.make(),
    );
  }
}
