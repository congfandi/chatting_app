import 'package:chatting_app/infrastructure/theme/app_font.dart';
import 'package:chatting_app/utils/extension/box_extension.dart';
import 'package:chatting_app/widgets/app_button.dart';
import 'package:chatting_app/widgets/app_input.dart';
import 'package:flutter/material.dart';

class RegisterForm extends StatelessWidget {
  const RegisterForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 55),
        child: Column(
          children: [
            AppInput(hint: "Name"),
            14.heightBox,
            AppInput(hint: "E-mail"),
            14.heightBox,
            AppInput(hint: "Password"),
            24.heightBox,
            AppButton(
              text: "Register",
              onPressed: () {},
            ),
            25.heightBox,
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Text("Already have an account?", style: AppFont.input),
              TextButton(
                onPressed: () {},
                child: Text("Login",
                    style: AppFont.input.copyWith(
                        color: Colors.blue, fontWeight: FontWeight.bold)),
              ),
            ]),
          ],
        ));
  }
}
