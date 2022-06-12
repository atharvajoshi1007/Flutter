class Item {
  final String id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item({required this.id, required this.name, required this.desc, required this.price, required this.color, required this.image});
}

final products = [Item(
  id:"Farm1",
  name: "Corainder",
  desc: "Fresh Coriander",
  price: 15,
  color: "green",
  image:  "https://www.google.com/imgres?imgurl=https%3A%2F%2Fwww.india-store.de%2Fimages%2Fthumbnail%2Fprodukte%2Flarge%2Ffood01%2F003%2Ffresh_coriander1.jpg&imgrefurl=https%3A%2F%2Fwww.india-store.de%2Flng%2Fen%2Fgrocery%2Ffresh-vegetables%2Ffood-1200.html&tbnid=C5ojeozDjNUp9M&vet=12ahUKEwiokJzY7af4AhX3yXMBHVqDB48QMygEegUIARDrAQ..i&docid=JbCHH_ijtwXsCM&w=880&h=880&q=coriander&ved=2ahUKEwiokJzY7af4AhX3yXMBHVqDB48QMygEegUIARDrAQ",

 )];
