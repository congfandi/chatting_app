import 'package:chatting_app/infrastructure/navigation/routes.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  FirebaseAuth auth = FirebaseAuth.instance;

  btnHandleLogin() async {
    if (_singInValidator()) {
      Get.dialog(
        const Center(
          child: CircularProgressIndicator(),
        ),
        barrierDismissible: false,
      );
      auth
          .signInWithEmailAndPassword(
              email: emailController.text, password: passwordController.text)
          .catchError((err) {
        Get.back();
        Get.snackbar("Error", err.toString());
      }).then((userAuth) {
        Get.back();
        if (userAuth.user != null) {
          debugPrint("Login Success ${userAuth.user.toString()}");
          Get.offAllNamed(Routes.LIST_CHAT);
        } else {
          Get.snackbar("Error", "Email belum terdaftar");
        }
      });
    }
  }

  bool _singInValidator() {
    if (!emailController.text.isEmail) {
      Get.snackbar("Error", "Email is not valid");
      return false;
    }
    if (passwordController.text.length < 6) {
      Get.snackbar("Error", "Password must be at least 6 characters");
      return false;
    }
    return true;
  }

  void handleSignupButton() {
    Get.toNamed(Routes.REGISTER);
  }
}
