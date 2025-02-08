import 'package:appka/app/routing/navigation/inavigation_util.dart';
import 'package:flutter/material.dart';

class MainNavigation implements INavigationUtil {
  factory MainNavigation() {
    return _instance;
  }

  MainNavigation._internal();

  @override
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  static final MainNavigation _instance = MainNavigation._internal();

  @override
  void navigateBack<T extends Object?>({T? data}) {
    navigatorKey.currentState?.pop(data);
  }

  @override
  Future navigateTo<T extends Object?>(String routeName,
      {bool allowBackNavigation = true, data}) {
    if (allowBackNavigation == false) {
      return navigatorKey.currentState!
          .pushReplacementNamed(routeName, arguments: data);
    }
    return navigatorKey.currentState!.pushNamed(routeName, arguments: data);
  }
}
