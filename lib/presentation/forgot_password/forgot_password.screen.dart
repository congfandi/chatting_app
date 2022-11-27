import 'package:chatting_app/infrastructure/theme/app_color.dart';
import 'package:chatting_app/infrastructure/theme/app_font.dart';
import 'package:chatting_app/presentation/forgot_password/component/forgot_logo.dart';
import 'package:chatting_app/utils/extension/box_extension.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'component/forgot_form.dart';
import 'controllers/forgot_password.controller.dart';

class ForgotPasswordScreen extends GetView<ForgotPasswordController> {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.white,
      appBar: AppBar(
        title: Text(
          'Forgot Password',
          style: AppFont.headerBlack.copyWith(
            color: AppColor.blackComponent,
          ),
        ),
        centerTitle: false,
        backgroundColor: AppColor.white,
        elevation: 0,
      ),
      body: Column(
        children: [
          60.heightBox,
          const ForgotLogo(),
          65.heightBox,
          const ForgotForm(),
        ],
      ),
    );
  }
}
