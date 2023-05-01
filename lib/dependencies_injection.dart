
import 'package:flutter/cupertino.dart';
import 'package:freeWoma/utils/utils.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';



import 'core/core.dart';
import 'features/features.dart';



GetIt sl = GetIt.instance;

Future<void> serviceLocator({bool isUnitTest = false}) async {
  /// For unit testing only
  if (isUnitTest) {
    WidgetsFlutterBinding.ensureInitialized();
    sl.reset();
    // ignore: invalid_use_of_visible_for_testing_member
    SharedPreferences.setMockInitialValues({});
    await SharedPreferences.getInstance().then((value) {
      initPrefManager(value);
    });
    sl.registerSingleton<DioClient>(DioClient(isUnitTest: true));
    dataSources();
    repositories();
    useCase();
    cubit();
  } else {
    sl.registerSingleton<DioClient>(DioClient());
    dataSources();
    repositories();
    useCase();
    cubit();
  }
}

// Register prefManager
void initPrefManager(SharedPreferences initPrefManager) {
  sl.registerLazySingleton<PrefManager>(() => PrefManager(initPrefManager));
}

/// Register repositories
void repositories() {
  sl.registerLazySingleton<AuthRepository>(() => AuthRepositoryImpl(sl()));
  sl.registerLazySingleton<UsersRepository>(() => UsersRepositoryImpl(sl()));
  sl.registerLazySingleton<AppointmentsRepository>(() => AppointmentsRepositoryImpl(sl()));
  sl.registerLazySingleton<ServicesRepository>(() => ServicesRepositoryImpl(sl()));
}

/// Register dataSources
void dataSources() {
  sl.registerLazySingleton<AuthRemoteDatasource>(
    () => AuthRemoteDatasourceImpl(sl()),
  );
  sl.registerLazySingleton<UsersRemoteDatasource>(
    () => UsersRemoteDatasourceImpl(sl()),
  );
  sl.registerLazySingleton<AppointmentRemoteDatasource>(
    () => AppointmentRemoteDatasourceImpl(sl()),
  );sl.registerLazySingleton<ServicesRemoteDatasource>(
    () => ServicesRemoteDatasourceImpl(sl()),
  );
}

void useCase() {
  /// Auth
  sl.registerLazySingleton(() => PostLogin(sl()));
  sl.registerLazySingleton(() => PostRegister(sl()));

  /// Users
  sl.registerLazySingleton(() => GetUsers(sl()));

  ///Appointments
  sl.registerLazySingleton(() => GetAppointment(sl()));
  sl.registerLazySingleton(() => AddAppointmentUseCase(sl()));

  ///Services
  sl.registerLazySingleton(() => GetServices(sl()));
}

void cubit() {
  /// Auth
  sl.registerFactory(() => RegisterCubit(sl()));
  sl.registerFactory(() => AuthCubit(sl()));

  /// Users
  sl.registerFactory(() => UsersCubit(sl()));

  /// Appointments
  sl.registerFactory(() => AppointmentCubit(sl(),sl()));
  sl.registerFactory(() => ServicesCubit(sl()));

  sl.registerFactory(() => SettingsCubit());
}
