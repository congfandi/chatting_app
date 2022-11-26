// ignore_for_file: constant_identifier_names

class Routes {
  static Future<String> get initialRoute async {
    return FORGOT_PASSWORD;
  }

  static const HOME = '/home';
  static const LOGIN = '/login';
  static const REGISTER = '/register';
  static const FORGOT_PASSWORD = '/forgot-password';
}
