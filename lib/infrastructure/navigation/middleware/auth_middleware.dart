import 'package:chatting_app/infrastructure/navigation/routes.dart';
import 'package:chatting_app/presentation/screens.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../bindings/controllers/login.controller.binding.dart';

class AuthMiddleware implements GetMiddleware {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  @override
  int? priority;

  @override
  List<Bindings>? onBindingsStart(List<Bindings>? bindings) {
   return bindings;
  }

  @override
  GetPageBuilder? onPageBuildStart(GetPageBuilder? page) {
    return page;
  }

  @override
  Widget onPageBuilt(Widget page) {
    return page;
  }

  @override
  GetPage? onPageCalled(GetPage? page) {
    return page;
  }

  @override
  void onPageDispose() {
  }

  @override
  RouteSettings? redirect(String? route) {
    if (route == Routes.LOGIN) {
      if (_auth.currentUser != null) {
        return const RouteSettings(name: Routes.LIST_CHAT);
      }
      return null;
    }
    if (_auth.currentUser == null) {
      return const RouteSettings(name: Routes.LOGIN);
    }
    return null;
  }

  @override
  Future<GetNavConfig?> redirectDelegate(GetNavConfig route) {
    // TODO: implement redirectDelegate
    throw UnimplementedError();
  }

}
