class CatalogModel {
  static final items = [
    Item(
        id: 1,
        name: "Corainder",
        desc: "Fresh Coriander",
        price: 15,
        color: "green",
        image:
            "https://static.bangkokpost.com/media/content/20200804/c1_1962403_200804063900.jpg")
  ];
}

class Item {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item({
    required this.id,
    required this.name,
    required this.desc,
    required this.price,
    required this.color,
    required this.image,
  });
}
