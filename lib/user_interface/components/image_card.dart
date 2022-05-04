import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../utils/config/size_config.dart';

class ImageCard extends StatelessWidget {
  const ImageCard(
      {Key? key,
      required this.image,
      this.size = 40,
      this.radius = 10,
      this.isNetwork = false})
      : super(key: key);
  final String image;
  final double size, radius;
  final bool isNetwork;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
      width: getProportionateScreenWidth(size),
      height: getProportionateScreenHeight(size),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(radius),
        child: isNetwork
            ? CachedNetworkImage(imageUrl: image, fit: BoxFit.cover)
            : Image.asset(image, fit: BoxFit.cover),
      ),
    );
  }
}
