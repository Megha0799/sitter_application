import 'package:flutter/material.dart';
import 'package:sitter_application/models/product.dart';

import '../widgets/drawer.dart';
import '../widgets/item_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("MyApp"),
      ),
      body: ListView.builder(
        itemCount: CatalogModel.items.length,
        itemBuilder: (context, index) {
          return ItemWidget(
            item: CatalogModel.items[index],
          );
        },
      ),
      drawer: const MyDrawer(),
    );
  }
}
