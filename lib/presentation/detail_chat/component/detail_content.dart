import 'package:chatting_app/infrastructure/theme/app_color.dart';
import 'package:chatting_app/infrastructure/theme/app_font.dart';
import 'package:chatting_app/utils/extension/box_extension.dart';
import 'package:flutter/material.dart';

class DetailContent extends StatelessWidget {
  const DetailContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView.builder(
      itemBuilder: (c, i) => _chatItem(i),
      itemCount: 10,
    ));
  }

  Widget _chatItem(int index) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            index % 2 == 0
                ? const SizedBox()
                : const Expanded(child: SizedBox()),
            Padding(
              padding: const EdgeInsets.only(top: 13, left: 21, right: 21),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 150,
                    padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 9),
                    decoration: BoxDecoration(
                      color: index % 2 == 0 ? AppColor.lightGrey : AppColor.blue,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      "Besok aku jadi",
                      style: AppFont.subtitle.copyWith(color: AppColor.black),
                    ),
                  ),
                  3.heightBox,
                  Text("8:10",style: AppFont.input,)
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
