import 'package:flutter/material.dart';

abstract interface class INavigationUtil {
  GlobalKey<NavigatorState> get navigatorKey;

  Future<dynamic> navigateTo<T extends Object?>(String routeName,
      {bool allowBackNavigation = true, dynamic data});

  void navigateBack<T extends Object?>({T data});
}
