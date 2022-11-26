import 'package:chatting_app/infrastructure/theme/app_font.dart';
import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  AppButton({super.key, required this.text, this.onPressed, this.width = 500});

  final String text;
  final Function()? onPressed;
  double? width;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 40,
        width: width,
        child: ElevatedButton(
            onPressed: onPressed,
            style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15))),
            child: Text(
              text,
              style: AppFont.label,
            )));
  }
}
