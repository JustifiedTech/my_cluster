import 'package:flutter/material.dart';

import '../../utils/config/size_config.dart';

class Space extends StatelessWidget {
  const Space({
    Key? key,
    this.width = 10.0,
    this.height = 10.0,
  }) : super(key: key);
  final double width, height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: getProportionateScreenHeight(height),
        width: getProportionateScreenWidth(width));
  }
}
