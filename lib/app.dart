import 'package:appka/app/routing/navigation/inavigation_util.dart';
import 'package:appka/app/routing/routing.dart';
import 'package:appka/app/screens/initial/initial_factory.dart';
import 'package:appka/app/screens/initial/initial_screen.dart';
import 'package:appka/app/utils/locator/service_locator.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: sl.get<INavigationUtil>().navigatorKey,
      onGenerateRoute: Routing.generateRoute,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
        ),
        useMaterial3: true,
      ),
      home: InitialFactory.build(),
    );
  }
}
