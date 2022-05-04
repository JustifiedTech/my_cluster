import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_cluster/user_interface/components/space.dart';

import 'default_svg_icon.dart';

class ClusterDetailsHeader extends StatelessWidget {
  const ClusterDetailsHeader({
    Key? key,
    required this.svg,
    required this.title,
  }) : super(key: key);

  final String svg;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        DefaultSvgIcon(icon: 'assets/svg/$svg.svg'),
        const Space(
          width: 10,
        ),
        Text(
          title,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
        )
      ],
    );
  }
}
