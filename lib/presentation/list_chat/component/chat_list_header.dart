import 'package:chatting_app/infrastructure/theme/app_font.dart';
import 'package:chatting_app/presentation/list_chat/controllers/list_chat.controller.dart';
import 'package:chatting_app/widgets/app_input.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class ChatListHeader extends StatelessWidget {
  const ChatListHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controller = Get.find<ListChatController>();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 40, bottom: 11,right: 40),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Chatting',
                style: AppFont.headerBlack,
              ),
              GestureDetector(
                onTap: controller.handleBtnSignOut,
                child: const Icon(Iconsax.logout_1),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: AppInput(
            hint: "Cari disini",
            prefixIcon: const Icon(Iconsax.search_normal_1),
          ),
        )
      ],
    );
  }
}
