
import 'package:app/services/auth_service.dart';
import 'package:get_it/get_it.dart';

import 'bloc/app/app_cubit.dart';
import 'bloc/auth/auth_cubit.dart';

class AppInit {
  static Future<void> initialize(GetIt getIt) async {
    //Cubits
    getIt.registerSingleton(AppCubit(getIt()));
    getIt.registerSingleton(AuthCubit());
    //Services
    getIt.registerLazySingleton(() => AuthService(getIt(), getIt()));
  }
}
