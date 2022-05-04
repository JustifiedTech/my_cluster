import 'package:flutter/material.dart';

import '../../utils/config/constants.dart';
import '../../utils/config/size_config.dart';

class Button extends StatelessWidget {
  const Button({
    Key? key,
    required this.onPressed,
    required this.label,
    this.fillColor = AppColors.primarysBrandBase,
    this.color = AppColors.greysWhite,
    this.borderColor = AppColors.greysWhite,
    this.width = 313,
    this.height = 56,
    this.fontSize = 12,
  }) : super(key: key);
  final String label;
  final Function()? onPressed;
  final Color fillColor, color, borderColor;

  final double width, height, fontSize;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: getProportionateScreenWidth(width),
      height: getProportionateScreenHeight(height),
      child: RawMaterialButton(
        onPressed: onPressed,
        fillColor: fillColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6),
        ),
        child: Text(
          label,
          style: TextStyle(
              color: color, fontSize: getProportionateScreenWidth(fontSize)),
        ),
      ),
    );
  }
}
