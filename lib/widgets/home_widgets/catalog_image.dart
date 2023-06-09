import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../themes.dart';

class CatalogImage extends StatelessWidget {
  const CatalogImage({
    Key? key,
    required this.image,
  })  : assert(image != null),
        super(key: key);

  final String image;

  @override
  Widget build(BuildContext context) {
    return Image.network(image)
        .box
        .rounded
        .p8
        .color(context.canvasColor)
        .make()
        .p16()
        .w40(context);
  }
}
