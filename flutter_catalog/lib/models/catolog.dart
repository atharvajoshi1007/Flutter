class CatalogModel {
  static final items = [
    Item(
      id: 1,
      name: "Corainder",
      desc: "Fresh Coriander",
      price: 15,
      color: "green",
      image:
          "D:/prgrams/flutter/Tutorials/flutter_catalog/assets/images/Coriander.jpg",
    )
  ];
}

class Item {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.color,
      required this.image});
}
