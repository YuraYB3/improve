import 'package:appka/app.dart';
import 'package:appka/app/utils/locator/service_locator.dart';
import 'package:flutter/material.dart';

void main() async {
  final ServiceLocator serviceLocator = ServiceLocator();
  serviceLocator.initNavigation();

  runApp(
    const MyApp(),
  );
}
