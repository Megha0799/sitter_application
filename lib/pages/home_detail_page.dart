import 'package:flutter/material.dart';
import 'package:sitter_application/models/product.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeDetailPage extends StatelessWidget {
  final Item catalog;
  const HomeDetailPage({Key? key, required this.catalog})
      : assert(catalog != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        //color: Colors.white,
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          buttonPadding: EdgeInsets.zero,
          children: [
            "\$${catalog.price}".text.bold.xl4.red800.make(),
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
                .wh(100, 50)
          ],
        ).p32(),
      ),
      appBar: AppBar(),
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Hero(
              tag: Key(catalog.id.toString()),
              child: Image.network(catalog.image),
            ).h32(context),
            Expanded(
              child: VxArc(
                height: 30.0,
                arcType: VxArcType.CONVEY,
                edge: VxEdge.TOP,
                child: Container(
                  color: Color.fromARGB(255, 232, 231, 231),
                  width: context.screenWidth,
                  child: Column(children: [
                    catalog.name.text.xl4
                        .color(Color.fromARGB(255, 49, 72, 83))
                        .bold
                        .make(),
                    catalog.desc.text.textStyle(context.captionStyle).xl.make(),
                    10.heightBox,
                  ]).py64(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
