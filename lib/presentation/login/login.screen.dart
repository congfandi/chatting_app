import 'package:chatting_app/presentation/login/component/login_footer.dart';
import 'package:chatting_app/presentation/login/component/login_logo.dart';
import 'package:chatting_app/utils/extension/box_extension.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'component/login_form.dart';
import 'component/login_social_media.dart';
import 'controllers/login.controller.dart';

class LoginScreen extends GetView<LoginController> {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            78.heightBox,
            const LoginLogo(),
            52.heightBox,
            const LoginForm(),
            28.heightBox,
            const LoginFooter(),
            43.heightBox,
            const LoginSocialMedia(),
          ],
        ),
      ),
    );
  }
}
