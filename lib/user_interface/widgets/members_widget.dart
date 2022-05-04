import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_cluster/utils/config/size_config.dart';
import 'package:my_cluster/utils/config/theme.dart';

import '../../bloc_providers/cubit/members_cubit.dart';
import '../../models/api_response.dart';
import '../../utils/config/constants.dart';
import '../components/custom_divider.dart';
import '../components/image_card.dart';
import '../components/padded.dart';
import '../components/row_tile.dart';
import '../components/space.dart';

class MembersWidget extends StatelessWidget {
  const MembersWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MembersCubit, MembersState>(
      builder: (context, state) {
        if (state is MembersLoaded) {
          return Padded(
            child: ListView(
              children: [
                const RowTile(title: 'Overdue Loans'),
                ListBuilder(
                  list: state.memberData.overdueAgents ?? [],
                  color: AppColors.redDarkest,
                ),
                const CustomDivider(),
                const RowTile(title: 'Due Today'),
                ListBuilder(
                    list: state.memberData.dueAgents ?? [],
                    color: AppColors.yellowDarkest),
                const CustomDivider(),
                const RowTile(title: 'Active Loans'),
                ListBuilder(
                    list: state.memberData.activeAgents ?? [],
                    color: AppColors.greenDarkest),
                const CustomDivider(),
                const Space(
                  height: 20,
                ),
                const RowTile(title: 'Inactive Loans'),
                ListBuilder(
                  list: state.memberData.inactiveAgents ?? [],
                  showDot: false,
                ),
                const Space(
                  height: 20,
                ),
              ],
            ),
          );
        }
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
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
  final List<AgentInfo?> list;
  final bool showDot;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: list.isEmpty ? 2 : list.length,
        itemBuilder: (contex, index) {
          final agent = list.isEmpty ? AgentInfo() : list[index];
          return ListTile(
            leading: const ImageCard(image: 'assets/images/Avatar-Small.png'),
            title: Row(children: [
              Text(
                  '${agent?.agent?.lastName ?? 'Florence '} ${agent?.agent?.firstName ?? 'Tanika '}',
                  style: textStyleRegular(13.16)),
              showDot
                  ? const Icon(Icons.circle, size: 5, color: AppColors.kGrey)
                  : Container(),
              Text(" 3 days over due",
                  style: textStyleRegular(13.16, color: color)),
            ]),
            subtitle: showDot
                ? Text(
                    '₦${agent?.agent?.recentLoan?.loanAmount ?? '10,555,000 Late loan '}',
                    style: textStyleBold(12, color: color))
                : Text('No active loans',
                    style: textStyleBold(12, color: color)),
          );
        },
        separatorBuilder: (context, index) => const CustomDivider());
  }
}
