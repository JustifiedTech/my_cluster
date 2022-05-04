import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_cluster/utils/config/theme.dart';
import '../../bloc_providers/cubit/members_cubit.dart';
import '../../utils/config/constants.dart';
import '../../utils/config/size_config.dart';
import '../components/button.dart';
import '../components/custom_divider.dart';
import '../components/default_card.dart';
import '../components/image_card.dart';
import '../components/padded.dart';
import '../components/space.dart';

class TabsWidget extends StatefulWidget {
  const TabsWidget({
    Key? key,
    required this.first,
    required this.second,
  }) : super(key: key);
  final Widget first, second;

  @override
  _TabsWidgetState createState() => _TabsWidgetState();
}

class _TabsWidgetState extends State<TabsWidget>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  int get tabIndex => tabController.index;

  @override
  void initState() {
    super.initState();

    tabController = TabController(length: 2, vsync: this);
    tabController.addListener(() {
      setState(() {});
    });
  }

  void navigate(int index) {
    tabController.animateTo(index);
  }

  @override
  void dispose() {
    super.dispose();
    tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      // extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: AppColors.darkBase,
        elevation: 0,
        centerTitle: true,
        leading: const Icon(
          Icons.arrow_back,
          color: Colors.white,
        ),
        title: Text(
          "My cluster",
          style: textStyleBold(17, color: AppColors.greysWhite),
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(getProportionateScreenHeight(346)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BlocBuilder<MembersCubit, MembersState>(
                builder: (context, state) {
                  return Padded(
                    horizontal: 10,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  state is MembersLoaded
                                      ? '₦${state.memberData.clusterName}'
                                      :
                                  'Moni dreambig community',
                                  style: textStyleBold(14,
                                      color: AppColors.greysWhite),
                                ),
                                const Space(height: 5),
                                DefaultCard(
                                  child: Text.rich(TextSpan(children: [
                                    TextSpan(
                                      text: 'Repayment rate: ',
                                      style: textStyleBold(14,
                                          color: AppColors.greysBase),
                                    ),
                                    TextSpan(
                                        text: state is MembersLoaded
                                            ? '₦${state.memberData.clusterRepaymentRate! * 100}%'
                                            : '',
                                        style: textStyleBold(14,
                                            color: AppColors
                                                .secondaryBrandDarkest))
                                  ])),
                                ),
                                const Space(height: 5),
                                DefaultCard(
                                  child: Text.rich(
                                    TextSpan(children: [
                                      TextSpan(
                                        text: 'Repayment Day: ',
                                        style: textStyleBold(14,
                                            color: AppColors.greysBase),
                                      ),
                                      TextSpan(
                                          text: 'Evey Sunday',
                                          style: textStyleBold(14,
                                              color: AppColors
                                                  .secondaryBrandDarkest))
                                    ]),
                                  ),
                                ),
                              ],
                            ),
                            const ImageCard(
                              size: 60,
                              image:
                                  'https://res.cloudinary.com/https-cashtopup-co/image/upload/v1646146816/wcxptgryc1hh4rx5nj0q.jpg',
                              isNetwork: true,
                            )
                          ],
                        ),
                        const CustomDivider(
                          height: 30,
                          color: AppColors.darkLighter,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Cluster purse balance',
                                  style: textStyleRegular(9,
                                      color: AppColors.greysWhite),
                                ),
                                const Space(height: 5),
                                Text(
                                    state is MembersLoaded
                                        ? '₦${state.memberData.clusterPurseBalance}'
                                        : '',
                                    style: textStyleBold(16,
                                        color: AppColors.greysBase)),
                                const Space(height: 5),
                                Text('+₦550,000,000 interest today',
                                    style: textStyleRegular(9,
                                        color: AppColors.greenLighter)),
                              ],
                            ),
                            Button(
                              width: 109,
                              height: 32,
                              label: 'View Purse',
                              onPressed: () {},
                            )
                          ],
                        ),
                        const CustomDivider(
                          height: 30,
                          color: AppColors.darkLighter,
                        ),
                        row(
                            'Total interest earned',
                            state is MembersLoaded
                                ? '₦${state.memberData.totalInterestEarned}'
                                : '',
                            color: AppColors.secondaryBrandBase),
                        const CustomDivider(
                          height: 30,
                          color: AppColors.darkLighter,
                        ),
                        
                        row(
                            'Total owed by members',
                            state is MembersLoaded
                                ? '₦${state.memberData.totalOwedByMembers}'
                                : '')
                      ],
                    ),
                  );
                },
              ),
              DefaultTabController(
                length: 2,
                child: Container(
                  width: double.infinity,
                  color: AppColors.secondaryBrandLightest,
                  child: TabBar(
                    controller: tabController,
                    tabs: [
                      Tab(
                        child: SizedBox(
                          width: SizeConfig.screenWidth! * .5,
                          child: const Center(child: Text("Members")),
                        ),
                      ),
                      Tab(
                        child: SizedBox(
                          width: SizeConfig.screenWidth! * .5,
                          child: const Center(child: Text("Cluster Details")),
                        ),
                      ),
                    ],
                    indicatorColor: AppColors.primarysBrandBase,
                    indicatorWeight: 2.5,
                    labelColor: AppColors.primarysBrandBase,
                    unselectedLabelColor: AppColors.darkDark,
                    labelStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: getProportionateScreenWidth(14)),
                    unselectedLabelStyle:
                        const TextStyle(fontStyle: FontStyle.normal),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: TabBarView(
        controller: tabController,
        children: [
          // Container(),
          widget.first,
          widget.second,
        ],
      ),
    );
  }

  Row row(String title, String text, {Color color = AppColors.greysWhite}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: textStyleRegular(12, color: AppColors.greysBase),
        ),
        Text(text, style: textStyleRegular(16, color: color))
      ],
    );
  }
}
