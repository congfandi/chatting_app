import 'package:chatting_app/domain/models/chat.dart';
import 'package:chatting_app/infrastructure/dal/services/auth_service.dart';
import 'package:chatting_app/infrastructure/dal/services/database_service.dart';
import 'package:chatting_app/infrastructure/theme/app_color.dart';
import 'package:get/get.dart';

class ListChatController extends GetxController {
  final AuthService _authSocialService = AuthService();
  final DatabaseService _databaseService = DatabaseService();

  Stream<List<Chat>> getMessages() {
    return _databaseService.getMessages();
  }

  handleBtnSignOut() {
    Get.defaultDialog(
      title: "Sign Out",
      middleText: "Are you sure want to sign out?",
      textConfirm: "Yes",
      textCancel: "No",
      confirmTextColor: AppColor.white,
      cancelTextColor: AppColor.black,
      onConfirm: () {
        _authSocialService.signOut();
      },
    );
  }
}
