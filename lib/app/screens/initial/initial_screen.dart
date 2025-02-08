import 'package:appka/app/screens/initial/bloc/initial_cubit.dart';
import 'package:appka/app/screens/initial/bloc/initial_state.dart';
import 'package:appka/app/screens/introduction/introduction_factory.dart';
import 'package:appka/app/screens/main/main_factory.dart';
import 'package:appka/app/screens/splash/splash_screen.dart';
import 'package:appka/app/screens/welcome/welcome_factory.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class InitialScreen extends StatelessWidget {
  const InitialScreen({
    required this.cubit,
    super.key,
  });

  final InitialCubit cubit;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<InitialCubit, InitialState>(
      builder: (_, state) {
        switch (state.status) {
          case InitialStatus.splash:
            return const SplashScreen();
          case InitialStatus.introduction:
            return IntroductionFactory.build();
          case InitialStatus.authorized:
            return MainFactory.build();
          case InitialStatus.unauthorized:
            return WelcomeFactory.build();
        }
      },
    );
  }
}
