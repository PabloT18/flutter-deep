part of 'app_bloc.dart';

abstract class AppState extends Equatable {
  // const AppState._({
  //   required this.status,
  //   this.user = User.empty,
  // });

  // const AppState.authenticated(User user)
  //     : this._(status: AppStatus.authenticated);

  // const AppState.unauthenticated() : this._(status: AppStatus.unauthenticated);

  // final AppStatus status;
  // final User user;
  const AppState({
    this.updateData = UpdateData.empty,
  });

  final UpdateData updateData;

  @override
  List<Object> get props => [updateData];
}

class AppInitialized extends AppState {}

class AppAuthenticated extends AppState {}

class AppUnautenticated extends AppState {}
