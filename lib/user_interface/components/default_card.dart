import 'package:flutter/material.dart';

import '../../utils/config/constants.dart';

class DefaultCard extends StatelessWidget {
  const DefaultCard(
      {Key? key,
      required this.child,
      this.color = AppColors.darkDarkest,
      this.padding = 10,
      this.radius = 10})
      : super(key: key);

  final Widget child;
  final double radius, padding;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: padding),
      decoration: BoxDecoration(
          color: color, borderRadius: BorderRadius.circular(radius)),
      child: child,
    );
  }
}
