import 'package:chatting_app/infrastructure/theme/app_font.dart';
import 'package:chatting_app/widgets/app_input.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ChatListHeader extends StatelessWidget {
  const ChatListHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 40, bottom: 11),
          child: Text(
          'Chatting',
            style: AppFont.headerBlack,
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
