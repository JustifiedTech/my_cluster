import 'package:flutter/material.dart';
import 'package:my_cluster/utils/config/size_config.dart';

class Padded extends StatelessWidget {
  const Padded(
      {Key? key, required this.child, this.horizontal = 17, this.vertical = 23})
      : super(key: key);
  final Widget child;
  final double horizontal;
  final double vertical;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(
            vertical: getProportionateScreenHeight(vertical),
            horizontal: getProportionateScreenWidth(horizontal)),
        child: child);
  }
}
