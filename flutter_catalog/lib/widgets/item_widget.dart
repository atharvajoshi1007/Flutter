import 'package:flutter/material.dart';

import '../models/catolog.dart';

class ItemWidget extends StatelessWidget {
  final Item item;
  const ItemWidget({Key? key, required this.item})
      : assert(item != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      //elevation:0, removes shadow item wise
      child: ListTile(
        onTap: () {
          print("${item.name} pressed ");
        },
        leading: Image.network(item.image),
        title: Text(item.name),
        subtitle: Text(item.desc),
        trailing: Text(
          "\Rs ${item.price}",
          textScaleFactor: 1.5,
          style: TextStyle(
            color: Colors.green,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
