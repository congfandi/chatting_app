import 'package:chatting_app/infrastructure/theme/app_font.dart';
import 'package:chatting_app/utils/extension/box_extension.dart';
import 'package:chatting_app/utils/src/img_string.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class LoginLogo extends StatelessWidget {
  const LoginLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(

      child: Column(
        children: [
          SvgPicture.asset(
            ImgString.appLogo,
            width: 145,
            height: 133,
          ),

          12.heightBox,
          Text(
            'Chat App',
            style: AppFont.h1,
          ),
        ],
      ),
    );
  }
}
