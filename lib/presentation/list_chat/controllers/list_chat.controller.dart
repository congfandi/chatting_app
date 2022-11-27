import 'package:chatting_app/infrastructure/dal/services/auth_social_service.dart';
import 'package:chatting_app/infrastructure/theme/app_color.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

class ListChatController extends GetxController {
  final AuthSocialService _authSocialService = AuthSocialService();
  final FirebaseFirestore _fireStore = FirebaseFirestore.instance;
  getDataFireStore(){
    _fireStore.collection('users').snapshots().listen((event) {
      print("Jumlah dataku ${event.docs.length}");
    });
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
