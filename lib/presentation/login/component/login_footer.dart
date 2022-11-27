import 'package:chatting_app/infrastructure/theme/app_color.dart';
import 'package:chatting_app/infrastructure/theme/app_font.dart';
import 'package:chatting_app/presentation/login/controllers/login.controller.dart';
import 'package:chatting_app/utils/extension/box_extension.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginFooter extends StatelessWidget {
  const LoginFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<LoginController>();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 55),
      child: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Lupa Password?",
              style: AppFont.input,
            ),
            8.heightBox,
            Text(
              "Bikin Baru",
              style: AppFont.input
                  .copyWith(color: AppColor.blue2, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Don't have an account?",
              style: AppFont.input,
            ),
            8.heightBox,
            GestureDetector(
              onTap: controller.handleSignupButton,
              child: Text(
                "Sign Up",
                style: AppFont.input.copyWith(
                    color: AppColor.blue2, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ]),
    );
  }
}
