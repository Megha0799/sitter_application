import 'package:flutter/cupertino.dart';
import 'package:velocity_x/velocity_x.dart';

class CatalogImage extends StatelessWidget {
  final String image;
  const CatalogImage({Key? key, required this.image})
      : assert(image != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.network(
      image,
    )
        .box
        .rounded
        .p8
        .color(Color.fromARGB(255, 235, 239, 241))
        .make()
        .p16()
        .w40(context);
  }
}
