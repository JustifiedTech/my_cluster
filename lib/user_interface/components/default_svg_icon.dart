import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_cluster/utils/config/constants.dart';

import '../../utils/config/size_config.dart';

class DefaultSvgIcon extends StatelessWidget {
  const DefaultSvgIcon(
      {Key? key,
      required this.icon,
      this.color = AppColors.kGrey,
      this.size = 20,
      this.onTap})
      : super(key: key);
  final String icon;
  final Color color;
  final double size;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SvgPicture.asset(
        icon,
        height: getProportionateScreenHeight(size),
        width: getProportionateScreenWidth(size),
        color: color,
      ),
    );
  }
}
