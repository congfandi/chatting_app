import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../config.dart';
import '../../presentation/screens.dart';
import 'bindings/controllers/controllers_bindings.dart';
import 'middleware/auth_middleware.dart';
import 'routes.dart';

class EnvironmentsBadge extends StatelessWidget {
  final Widget child;
  const EnvironmentsBadge({super.key, required this.child});
  @override
  Widget build(BuildContext context) {
    var env = ConfigEnvironments.getEnvironments()['env'];
    return env != Environments.PRODUCTION
        ? Banner(
            location: BannerLocation.topStart,
            message: env!,
            color: env == Environments.QAS ? Colors.blue : Colors.purple,
            child: child,
          )
        : SizedBox(child: child);
  }
}

class Nav {
  static List<GetPage> routes = [
    GetPage(
      name: Routes.LOGIN,
      page: () => const LoginScreen(),
      binding: LoginControllerBinding(),
      middlewares: [
        AuthMiddleware(),
      ]
    ),
    GetPage(
      name: Routes.REGISTER,
      page: () => const RegisterScreen(),
      binding: RegisterControllerBinding(),
        middlewares: [
          AuthMiddleware(),
        ]
    ),
    GetPage(
      name: Routes.FORGOT_PASSWORD,
      page: () => const ForgotPasswordScreen(),
      binding: ForgotPasswordControllerBinding(),
        middlewares: [
          AuthMiddleware(),
        ]
    ),
    GetPage(
      name: Routes.LIST_CHAT,
      page: () => const ListChatScreen(),
      binding: ListChatControllerBinding(),
        middlewares: [
          AuthMiddleware(),
        ]
    ),
    GetPage(
      name: Routes.DETAIL_CHAT,
      page: () => const DetailChatScreen(),
      binding: DetailChatControllerBinding(),
        middlewares: [
          AuthMiddleware(),
        ]
    ),
  ];
}
