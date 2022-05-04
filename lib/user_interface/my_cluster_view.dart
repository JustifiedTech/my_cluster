import 'package:flutter/material.dart';
import 'package:my_cluster/user_interface/widgets/members_widget.dart';
import 'package:my_cluster/user_interface/widgets/tabs_widget.dart';

import 'widgets/cluster_details_widget.dart';

class MyClusterView extends StatelessWidget {
  const MyClusterView({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return const TabsWidget(
        first: MembersWidget(), second: ClusterDetailsWidget());
  }
}
