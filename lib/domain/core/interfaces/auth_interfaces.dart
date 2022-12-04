import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthInterface {
  void signInWithGoogle();

  void signInWithFacebook();

  void signInWithApple();

  void signInEmail(String email,String password);

  void signUpEmail(String email,String password);

  void signOut();

  User? getCurrentUser();
}
