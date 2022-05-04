import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_cluster/utils/config/theme.dart';
import 'utils/routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({
    Key? key,
  }) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: AppThemes.primaryTheme(),
      initialRoute: AppRoute.myCluster,
      onGenerateRoute: AppRoute.onGenerateRoute,
    );
  }
}
