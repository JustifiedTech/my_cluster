import 'package:flutter/material.dart';

import '../../utils/config/constants.dart';
import '../../utils/config/theme.dart';
import 'space.dart';

class RowTile extends StatelessWidget {
  const RowTile({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: textStyleRegular(13.6),
            ),
            Image.asset(
              'assets/images/Dash.jpg',
              width: 10,
              fit: BoxFit.fitWidth,
            )
          ],
        ),
        const Space(
          height: 20,
        ),
        const Divider(
          height: 2,
          thickness: 1.01,
          indent: 5,
          endIndent: 5,
          color: AppColors.kGrey5,
        ),
      ],
    );
  }
}
