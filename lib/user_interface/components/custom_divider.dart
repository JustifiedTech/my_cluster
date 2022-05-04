import 'package:flutter/material.dart';
import 'package:my_cluster/utils/config/constants.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({
    Key? key, this.color = AppColors.kGrey5, this.height = 16
  }) : super(key: key);
  final Color color;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Divider(
      height: height,
      thickness: 1.01,
      indent: 10,
      endIndent: 10,
      color: color,
    );
  }
}
