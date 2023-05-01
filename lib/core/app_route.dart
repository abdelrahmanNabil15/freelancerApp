import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freeWoma/dependencies_injection.dart';
import 'package:freeWoma/features/features.dart';
import 'package:freeWoma/utils/utils.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../features/appointments/pages/appointment/add_appointment_page.dart';
 import '../features/services/pages/pages/list_service.dart';

enum Routes {
  root("/"),
  splashScreen("/splashscreen"),

  /// Home Page
  appointment("/appointment"),
  dashboard("/dashboard"),
  settings("/settings"),
  addAppointment("addAppointment"),
  cupertinoButtonWidget("cupertinoButtonWidget"),
  listService("/listService"),

  // Auth Page
  login("/auth/login"),
  register("/auth/register"),
  ;

  const Routes(this.path);

  final String path;
}

class AppRoute {
  static late BuildContext context;

  AppRoute.setStream(BuildContext ctx) {
    context = ctx;
  }

  static final GoRouter router = GoRouter(
    routes: [
      ///splashScreen
      GoRoute(
        path: Routes.splashScreen.path,
        name: Routes.splashScreen.name,
        builder: (_, __) => SplashScreenPage(),
      ),

      ///main root
      GoRoute(
        path: Routes.root.path,
        name: Routes.root.name,
        redirect: (_, __) => Routes.appointment.path,
      ),

      ///login
      GoRoute(
        path: Routes.login.path,
        name: Routes.login.name,
        builder: (_, __) => const LoginPage(),
      ),

      ///listService

      GoRoute(
        path: Routes.register.path,
        name: Routes.register.name,
        builder: (_, __) => BlocProvider(
          create: (_) => sl<RegisterCubit>(),
          child: const RegisterPage(),
        ),
      ),

      ShellRoute(
        builder: (_, __, child) => MainPage(child: child),
        routes: [
          GoRoute(
            path: Routes.dashboard.path,
            name: Routes.dashboard.name,
            builder: (_, __) => BlocProvider(
              create: (_) => sl<UsersCubit>()..fetchUsers(const UsersParams()),
              child: const DashboardPage(),
            ),
          ),
          GoRoute(
            path: Routes.appointment.path,
            name: Routes.appointment.name,
            routes: [
              GoRoute(
                path: Routes.addAppointment.path,
                name: Routes.addAppointment.name,

                builder: (_, __) => const AddAppointmentScreen(),
              ),
            ],
            builder: (_, __) => BlocProvider(
              create: (_) => sl<AppointmentCubit>()
                ..fetchAppointment(const AppointmentsParams()),
              child: const AppointmentScreen(),
            ),
          ),
          GoRoute(
            path: Routes.settings.path,
            name: Routes.settings.name,
            builder: (_, __) => const SettingsPage(),
          ),
          GoRoute(
            path: Routes.listService.path,
            name: Routes.listService.name,
            builder: (_, __) => ItemListScreen(),
          ),
        ],
      ),
    ],
    initialLocation: Routes.splashScreen.path,
    routerNeglect: true,
    debugLogDiagnostics: kDebugMode,
    refreshListenable: GoRouterRefreshStream(context.read<AuthCubit>().stream),
    redirect: (_, GoRouterState state) {
      final bool isLoginPage = state.subloc == Routes.login.path ||
          state.subloc == Routes.register.path;

      ///  Check if not login
      ///  if current page is login page we don't need to direct user
      ///  but if not we must direct user to login page
      if (!sl<PrefManager>().isLogin) {
        return isLoginPage ? null : Routes.login.path;
      }

      /// Check if already login and in login page
      /// we should direct user to main page

      if (isLoginPage && sl<PrefManager>().isLogin) {
        return Routes.root.path;
      }

      /// No direct
      return null;
    },
  );
}
