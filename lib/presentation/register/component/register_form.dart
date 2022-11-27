import 'package:chatting_app/infrastructure/theme/app_font.dart';
import 'package:chatting_app/presentation/register/controllers/register.controller.dart';
import 'package:chatting_app/utils/extension/box_extension.dart';
import 'package:chatting_app/widgets/app_button.dart';
import 'package:chatting_app/widgets/app_input.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterForm extends StatelessWidget {
  const RegisterForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controller = Get.find<RegisterController>();
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 55),
        child: Column(
          children: [
            AppInput(
              hint: "E-mail",
              controller: controller.emailController,
            ),
            14.heightBox,
            AppInput(
              hint: "Password",
              controller: controller.passwordController,
            ),
            24.heightBox,
            AppButton(
              text: "Register",
              onPressed: controller.handleBtnRegister,
            ),
            25.heightBox,
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Text("Already have an account?", style: AppFont.input),
              TextButton(
                onPressed: controller.handleLoginButton,
                child: Text("Login",
                    style: AppFont.input.copyWith(
                        color: Colors.blue, fontWeight: FontWeight.bold)),
              ),
            ]),
          ],
        ));
  }
}
