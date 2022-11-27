import 'package:chatting_app/infrastructure/theme/app_font.dart';
import 'package:chatting_app/presentation/login/controllers/login.controller.dart';
import 'package:chatting_app/utils/extension/box_extension.dart';
import 'package:chatting_app/utils/src/img_string.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class LoginSocialMedia extends StatelessWidget {
  const LoginSocialMedia({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controller = Get.find<LoginController>();
    return Column(
      children: [
        Text(
          "Or Login with",
          style: AppFont.input,
        ),
        15.heightBox,
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
                onTap: controller.handleGoogleLogin,
                child: SvgPicture.asset(ImgString.googleLogo,
                    width: 40, height: 40)),
            37.widthBox,
            SvgPicture.asset(ImgString.appleLogo, width: 40, height: 40),
            37.widthBox,
            SvgPicture.asset(ImgString.facebookLogo, width: 40, height: 40),
          ],
        )
      ],
    );
  }
}
