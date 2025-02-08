import 'package:appka/app/routing/navigation/inavigation_util.dart';
import 'package:appka/app/screens/initial/bloc/initial_cubit.dart';
import 'package:appka/app/screens/initial/initial_screen.dart';
import 'package:appka/app/utils/locator/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class InitialFactory {
  static Widget build() {
    return BlocProvider(
      create: (_) => InitialCubit(
        navigationUtil: sl.get<INavigationUtil>()
      )..init(),
      child: Builder(
        builder: (context) {
          return  InitialScreen(
            cubit: BlocProvider.of<InitialCubit>(context),
          );
        },
      ),
    );
  }
}
