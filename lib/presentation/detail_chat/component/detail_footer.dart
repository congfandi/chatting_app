import 'package:chatting_app/infrastructure/theme/app_color.dart';
import 'package:chatting_app/utils/extension/box_extension.dart';
import 'package:chatting_app/widgets/app_input.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class DetailFooter extends StatelessWidget {
  const DetailFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColor.lightGrey,
      padding: const EdgeInsets.symmetric(horizontal: 26, vertical: 8),
      child: Row(
        children: [
          Expanded(
            child: AppInput(
              hint: "Tulis pesan.....",
            ),
          ),
          16.widthBox,
          Container(
            width: 36,
            height: 36,
            decoration: BoxDecoration(
              color: AppColor.blue2,
              borderRadius: BorderRadius.circular(30),
            ),
            child: const Icon(
              Iconsax.send_1,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
