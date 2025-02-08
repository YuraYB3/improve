import 'package:appka/app/routing/navigation/inavigation_util.dart';
import 'package:appka/app/screens/initial/bloc/initial_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class InitialCubit extends Cubit<InitialState> {
  InitialCubit({required INavigationUtil navigationUtil})
      : _navigationUtil = navigationUtil,
        super(
          const InitialState(),
        );

  final INavigationUtil _navigationUtil;

  Future<void> init() async {
    Future.delayed(
      const Duration(seconds: 5),
      () {
        emit(
          state.copyWith(status: InitialStatus.unauthorized),
        );
      },
    );
  }
}
