import 'package:flutter/material.dart';
import 'package:my_cluster/utils/config/theme.dart';
import '../../utils/config/constants.dart';
import '../../utils/config/size_config.dart';

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
            children: [
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

                    // labelPadding: EdgeInsets.only(left: 30),
                    indicatorColor: AppColors.primarysBrandBase,
                    indicatorWeight: 2.5,
                    // indicator: UnderlineTabIndicator(
                    //     borderSide: BorderSide(
                    //       color: AppColors.primarysBrandBase,
                    //       width: 2,
                    //     ),
                    //     insets: EdgeInsets.only()),

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
          widget.first,
          widget.second,
        ],
      ),
    );
  }
}
