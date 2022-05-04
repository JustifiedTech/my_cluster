import 'package:flutter/material.dart';
import 'package:my_cluster/utils/config/size_config.dart';

class Padded extends StatelessWidget {
  const Padded(
      {Key? key, required this.child, this.width = 17, this.height = 23})
      : super(key: key);
  final Widget child;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(
            vertical: getProportionateScreenHeight(height),
            horizontal: getProportionateScreenWidth(width)),
        child: child);
  }
}
