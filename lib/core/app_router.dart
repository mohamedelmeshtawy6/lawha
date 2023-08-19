import 'package:go_router/go_router.dart';
import 'package:lawha/features/auth/presentation/view/login_screen.dart';
import 'package:lawha/features/auth/presentation/view/signup_screen.dart';
import 'package:lawha/features/main/main_screen.dart';

import '../features/welcompage/presentation/view/welcome_screen.dart';

abstract class AppRouter {
  static const loginscreen = '/fg';
  static const signupscreen = '/sdsd';
  static const mainscreen = '/mainscreen';
  static const splashView = '/';

  static final route = GoRouter(routes: [
    GoRoute(
      path: splashView,
      builder: (context, state) {
        return const WelcomeScreen();
      },
    ),
    GoRoute(
      path: loginscreen,
      builder: (context, state) {
        return LoginScreen();
      },
    ),
    GoRoute(
      path: signupscreen,
      builder: (context, state) {
        return SignupScreen();
      },
    ),
    GoRoute(
      path: mainscreen,
      builder: (context, state) {
        return const MainScreen();
      },
    )
  ]);
}
