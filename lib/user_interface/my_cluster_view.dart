import 'package:flutter/material.dart';
import 'package:my_cluster/user_interface/widgets/members_widget.dart';
import 'package:my_cluster/user_interface/widgets/tabs_widget.dart';

import 'widgets/cluster_details_widget.dart';

class MyClusterView extends StatefulWidget {
  const MyClusterView({Key? key}) : super(key: key);

  @override
  State<MyClusterView> createState() => _MyClusterViewState();
}

class _MyClusterViewState extends State<MyClusterView> {
  @override
  Widget build(BuildContext context) {
    return TabsWidget(first: MembersWidget(), second: ClusterDetailsWidget());
  }
}
