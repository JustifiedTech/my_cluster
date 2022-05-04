import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_cluster/service/api_service.dart';
import 'package:my_cluster/utils/config/theme.dart';
import 'bloc_providers/cubit/members_cubit.dart';
import 'repository/members_repository.dart';
import 'utils/routes.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


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
    return RepositoryProvider(
      create: (context) => MemberRepository(ApiService()),
      child: BlocProvider<MembersCubit>(
        create: (context) =>
            MembersCubit(RepositoryProvider.of<MemberRepository>(context))
              ..init(),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: AppThemes.primaryTheme(),
          initialRoute: AppRoute.myCluster,
          onGenerateRoute: AppRoute.onGenerateRoute,
        ),
      ),
    );
  }
}
