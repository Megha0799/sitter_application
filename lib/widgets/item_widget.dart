import 'package:flutter/material.dart';
import 'package:sitter_application/models/product.dart';

class ItemWidget extends StatelessWidget {
  final Item item;

  const ItemWidget({Key? key, required this.item})
      : assert(item != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
        // leading: Image.network(item.image),
        );
  }
}
