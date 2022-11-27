import 'package:get/get.dart';

import '../../../../presentation/list_chat/controllers/list_chat.controller.dart';

class ListChatControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ListChatController>(
      () => ListChatController(),
    );
  }
}
