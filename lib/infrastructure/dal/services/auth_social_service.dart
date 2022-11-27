import 'package:chatting_app/domain/core/interfaces/auth_social_interfaces.dart';
import 'package:chatting_app/infrastructure/navigation/routes.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:get/get.dart';

class AuthSocialService implements AuthSocialInterface {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  final FacebookAuth _facebookAuth = FacebookAuth.instance;

  @override
  void signInWithApple() {
    Get.dialog(
      const Center(
        child: CircularProgressIndicator(),
      ),
      barrierDismissible: false,
    );
    _firebaseAuth.signInWithProvider(AppleAuthProvider()).catchError((err) {
      Get.back();
      Get.snackbar("Error", err.toString());
    }).then((value) {
      Get.back();
      Get.offAllNamed(Routes.LIST_CHAT);
    });
  }

  @override
  void signInWithFacebook() async {
    Get.dialog(
      const Center(
        child: CircularProgressIndicator(),
      ),
      barrierDismissible: false,
    );
    _facebookAuth.login().then((result) {
      switch (result.status) {
        case LoginStatus.success:
          final OAuthCredential facebookAuthCredential =
              FacebookAuthProvider.credential(result.accessToken!.token);
          _firebaseAuth
              .signInWithCredential(facebookAuthCredential)
              .then((value) {})
              .catchError((err) {
            Get.back();
            Get.snackbar("Error", err.toString());
          }).then((value) {
            Get.back();
            Get.offAllNamed(Routes.LIST_CHAT);
          });
          break;
        case LoginStatus.cancelled:
          Get.back();
          Get.snackbar("Error", "Login Cancelled");
          break;
        case LoginStatus.failed:
          Get.back();
          Get.snackbar("Error", "Login Failed");
          break;
        case LoginStatus.operationInProgress:
          // TODO: Handle this case.
          break;
      }
    }).catchError((err) {
      Get.back();
      Get.snackbar("Error", err.toString());
    });
  }

  @override
  void signInWithGoogle() async {
    Get.dialog(
      const Center(
        child: CircularProgressIndicator(),
      ),
      barrierDismissible: false,
    );
    _firebaseAuth.signInWithProvider(GoogleAuthProvider()).catchError((err) {
      Get.back();
      Get.snackbar("Error", err.toString());
    }).then((value) {
      Get.back();
      Get.offAllNamed(Routes.LIST_CHAT);
    });
  }

  @override
  void signOut() {
    _firebaseAuth.signOut().then((value) {
      Get.offAllNamed(Routes.LOGIN);
    }).catchError((err) {
      Get.snackbar("Error!", err.toString());
    });
  }
}
