import 'package:equatable/equatable.dart';

enum InitialStatus {
  splash,
  authorized,
  unauthorized,
  introduction,
}

class InitialState extends Equatable {
  const InitialState({
    this.status = InitialStatus.splash,
  });

  InitialState copyWith({
    InitialStatus? status,
  }) =>
      InitialState(
        status: status ?? this.status,
      );

  @override
  List<Object?> get props => [
        status,
      ];

  final InitialStatus status;
}
