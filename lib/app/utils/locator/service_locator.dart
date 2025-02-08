import 'package:appka/app/routing/navigation/inavigation_util.dart';
import 'package:appka/app/routing/navigation/main_navigation.dart';
import 'package:get_it/get_it.dart';

final GetIt sl = GetIt.instance;

class ServiceLocator {
 void initNavigation()  {
    sl.registerSingleton<INavigationUtil>(
      MainNavigation(),
    );
  }
}
