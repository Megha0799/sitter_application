import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../models/product.dart';

import 'catalog_image.dart';

class CatalogItem extends StatelessWidget {
  final Item catalog;
  const CatalogItem({Key? key, required this.catalog})
      : assert(catalog != null),
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
              catalog.name.text.xl
                  .color(Color.fromARGB(255, 49, 72, 83))
                  .bold
                  .make(),
              catalog.desc.text.textStyle(context.captionStyle).make(),
              10.heightBox,
              ButtonBar(
                alignment: MainAxisAlignment.spaceBetween,
                buttonPadding: EdgeInsets.zero,
                children: [
                  "\$${catalog.price}".text.bold.xl.make(),
                  ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            Color.fromARGB(255, 22, 29, 41)),
                        shape: MaterialStateProperty.all(
                          StadiumBorder(),
                        ),
                      ),
                      child: "Buy".text.make())
                ],
              ).pOnly(right: 8)
            ],
          ))
        ],
      ),
    ).white.rounded.square(150).make().py16();
  }
}
