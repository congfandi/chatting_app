import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthSocialInterface {
  void signInWithGoogle();

  void signInWithFacebook();

  void signInWithApple();

  void signOut();
}
