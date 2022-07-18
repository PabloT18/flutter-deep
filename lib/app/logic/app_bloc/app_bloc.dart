import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_deep/app/models/app_models.dart';

part 'app_event.dart';
part 'app_state.dart';

class AppBloc extends Bloc<AppEvent, AppState> {
  AppBloc(
      // {required AuthenticationRepository authenticationRepository}
      )
      : super(AppInitialized());
  // : _authenticationRepository = authenticationRepository,
  //   super(
  //     authenticationRepository.currentUser.isNotEmpty
  //         ? AppState.authenticated(authenticationRepository.currentUser)
  //         : const AppState.unauthenticated(),
  //   ) {
  // TODO: implement event handler
}

  // final AuthenticationRepository _authenticationRepository;
  // late final StreamSubscription<User> _userSubscription;
// }
