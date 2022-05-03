import 'package:flutter/material.dart';
import 'package:my_cluster/user_interface/my_cluster_view.dart';

import '../user_interface/error.dart';

class AppRoute {
  static Route onGenerateRoute(RouteSettings settings) {
    // final args = settings.arguments;

    switch (settings.name) {
      case myCluster:
        return MaterialPageRoute(builder: (context) => const MyClusterView());

      default:
        return MaterialPageRoute(builder: (context) => const ErrorPage());
    }
  }

  static const String myCluster = '/';
}
