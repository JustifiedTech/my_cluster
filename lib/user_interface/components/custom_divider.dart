import 'package:flutter/material.dart';
import 'package:my_cluster/utils/config/constants.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Divider(
      height: 16,
      thickness: 1.01,
      indent: 10,
      endIndent: 10,
      color: AppColors.kGrey5,
    );
  }
}
