import 'package:chatting_app/infrastructure/dal/services/auth_social_service.dart';
import 'package:chatting_app/infrastructure/theme/app_color.dart';
import 'package:get/get.dart';

class ListChatController extends GetxController {
  final AuthSocialService _authSocialService = AuthSocialService();

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
