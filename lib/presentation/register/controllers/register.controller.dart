import 'package:chatting_app/infrastructure/navigation/routes.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterController extends GetxController {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final auth = FirebaseAuth.instance;

  handleBtnRegister() {
    if (_singInValidator()) {
      Get.dialog(
        const Center(
          child: CircularProgressIndicator(),
        ),
        barrierDismissible: false,
      );
      auth
          .createUserWithEmailAndPassword(
              email: emailController.text, password: passwordController.text)
          .then((userAuth) {
        Get.back();
        if (userAuth.user != null) {
          debugPrint("Login Success ${userAuth.user.toString()}");
          Get.offAllNamed(Routes.LIST_CHAT);
        } else {
          Get.snackbar("Error", "Email belum terdaftar");
        }
      }).catchError((err) {
        Get.back();
        Get.snackbar("Error", err.toString());
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

  void handleLoginButton() {
    Get.toNamed(Routes.LOGIN);
  }
}
