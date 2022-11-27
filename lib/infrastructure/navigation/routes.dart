// ignore_for_file: constant_identifier_names

class Routes {
  static Future<String> get initialRoute async {
    return LOGIN;
  }

  static const FORGOT_PASSWORD = '/forgot-password';
  static const HOME = '/home';
  static const LIST_CHAT = '/list-chat';
  static const LOGIN = '/login';
  static const REGISTER = '/register';
  static const DETAIL_CHAT = '/detail-chat';
}
