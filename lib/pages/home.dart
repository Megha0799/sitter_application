import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import 'package:sitter_application/models/product.dart';

import 'package:velocity_x/velocity_x.dart';

import 'home_widgets/catalog_header.dart';
import 'home_widgets/catalog_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(const Duration(seconds: 2));
    final catalogJson =
        await rootBundle.loadString("assets/Files/catalog.json");
    //print(catalogJson);
    final deCodedData = jsonDecode(catalogJson);
    // print(deCodedData);
    var productsData = deCodedData["products"];
    CatalogModel.items = List.from(productsData)
        .map<Item>((item) => Item.fromMap(item))
        .cast<Item>()
        .toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    // final dummyList = List.generate(10, (index) => CatalogModel.items[0]);
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text("MyApp"),
      // ),

      //  Padding(
      //   padding: const EdgeInsets.all(16.0),
      //   child: (CatalogModel.items != null && CatalogModel.items.isNotEmpty)
      //       // ? ListView.builder(
      //       //     itemCount: CatalogModel.items.length,
      //       //     itemBuilder: (context, index) => ItemWidget(
      //       //       item: CatalogModel.items[index],
      //       //     ),
      //       //   )
      //       ? GridView.builder(
      //           gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      //             crossAxisCount: 2,
      //             mainAxisSpacing: 16,
      //             crossAxisSpacing: 16,
      //           ),
      //           itemBuilder: (context, index) {
      //             final item = CatalogModel.items[index];
      //             return Card(
      //                 clipBehavior: Clip.antiAlias,
      //                 shape: RoundedRectangleBorder(
      //                     borderRadius: BorderRadius.circular(10)),
      //                 child: GridTile(
      //                   header: Container(
      //                     child: Text(
      //                       item.name,
      //                       style: TextStyle(color: Colors.white),
      //                     ),
      //                     padding: const EdgeInsets.all(12),
      //                     decoration: BoxDecoration(
      //                       color: Colors.deepPurple,
      //                     ),
      //                   ),
      //                   child: Image.network(
      //                     item.image,
      //                   ),
      //                   footer: Container(
      //                     child: Text(
      //                       item.price.toString(),
      //                       style: TextStyle(color: Colors.white),
      //                     ),
      //                     padding: const EdgeInsets.all(12),
      //                     decoration: BoxDecoration(
      //                       color: Colors.black,
      //                     ),
      //                   ),
      //                 ));
      //           },
      //           itemCount: CatalogModel.items.length,
      //         )
      //       : Center(
      //           child: CircularProgressIndicator(),
      //         ),
      // ),
      // drawer: const MyDrawer(),
      body: SafeArea(
        child: Container(
          padding: Vx.m32,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CatalogHeader(),
              if (CatalogModel.items != null && CatalogModel.items.isNotEmpty)
                const CatalogList().py16().expand()
              else
                const CircularProgressIndicator().centered().py16().expand(),
            ],
          ),
        ),
      ),
    );
  }
}
