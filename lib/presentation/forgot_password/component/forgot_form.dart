import 'package:chatting_app/infrastructure/theme/app_color.dart';
import 'package:chatting_app/infrastructure/theme/app_font.dart';
import 'package:chatting_app/utils/extension/box_extension.dart';
import 'package:chatting_app/widgets/app_button.dart';
import 'package:chatting_app/widgets/app_input.dart';
import 'package:flutter/material.dart';

class ForgotForm extends StatelessWidget {
  const ForgotForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 55),
      child: Column(
        children: [
          AppInput(hint: "E-mail"),
          24.heightBox,
          AppButton(
            text: "Request New Password",
            onPressed: () {},
          ),
          28.heightBox,
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text("Can request after", style: AppFont.input),
            Text("0:15",
                style: AppFont.input.copyWith(
                    color: AppColor.blue2, fontWeight: FontWeight.bold)),
          ]),
        ],
      ),
    );
  }
}
