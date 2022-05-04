import 'package:flutter/material.dart';
import 'package:my_cluster/utils/config/size_config.dart';
import 'package:my_cluster/utils/config/theme.dart';

import '../../utils/config/constants.dart';
import '../components/custom_divider.dart';
import '../components/padded.dart';
import '../components/row_tile.dart';
import '../components/space.dart';

class MembersWidget extends StatelessWidget {
  const MembersWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padded(
      child: ListView(
        children: const [
          RowTile(title: 'Overdue Loans'),
          ListBuilder(
            list: ['', ''],
            color: AppColors.redDarkest,
          ),
          CustomDivider(),
          RowTile(title: 'Due Today'),
          ListBuilder(list: [
            '',
            '',
          ], color: AppColors.yellowDarkest),
          CustomDivider(),
          RowTile(title: 'Active Loans'),
          ListBuilder(list: [
            '',
            '',
            '',
          ], color: AppColors.greenDarkest),
          CustomDivider(),
          Space(
            height: 20,
          ),
          RowTile(title: 'Inactive Loans'),
          ListBuilder(
            list: [
              '',
              '',
              '',
            ],
            showDot: false,
          ),
          Space(
            height: 20,
          ),
        ],
      ),
    );
  }
}

class ListBuilder extends StatelessWidget {
  const ListBuilder(
      {Key? key,
      required this.list,
      this.showDot = true,
      this.color = AppColors.kText1})
      : super(key: key);
  final List<dynamic> list;
  final bool showDot;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: list.length,
        itemBuilder: (contex, indext) {
          return ListTile(
            leading: Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(10)),
              width: getProportionateScreenWidth(40),
              height: getProportionateScreenHeight(40),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset('assets/images/Avatar-Small.png'),
              ),
            ),
            title: Row(children: [
              Text("Hello, World ", style: textStyleRegular(13.16)),
              showDot
                  ? const Icon(Icons.circle, size: 5, color: AppColors.kGrey)
                  : Container(),
              Text(" 3 days over due",
                  style: textStyleRegular(13.16, color: color)),
            ]),
            subtitle: Text('₦10,555,000 Late loan ',
                style: textStyleBold(12, color: color)),
          );
        },
        separatorBuilder: (context, index) => const CustomDivider());
  }
}
