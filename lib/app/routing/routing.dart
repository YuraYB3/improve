import 'package:appka/app/routing/route_constants.dart';
import 'package:appka/app/screens/main/main_factory.dart';
import 'package:flutter/material.dart';

class Routing {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case routeMain:
        return _buildMainScreen(settings);
      default:
        return MaterialPageRoute(
          builder: (_) => const Scaffold(
            body: Center(
              child: Text('Oops! Something went wrong!'),
            ),
          ),
        );
    }
  }

  static PageRoute _buildMainScreen(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (_) {
        return MainFactory.build();
      },
      settings: settings,
    );
  }
}
