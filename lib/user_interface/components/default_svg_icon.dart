import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_cluster/utils/config/constants.dart';

import '../../utils/config/size_config.dart';

class DefaultSvgIcon extends StatelessWidget {
  const DefaultSvgIcon(
      {Key? key,
    required this.icon,
      this.size = 20,
  })
      : super(key: key);
  final String icon;
  final double size;
  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      icon,
      height: getProportionateScreenHeight(size),
      width: getProportionateScreenWidth(size),
    );
  }
}
