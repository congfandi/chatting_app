import 'package:chatting_app/infrastructure/theme/app_color.dart';
import 'package:chatting_app/infrastructure/theme/app_font.dart';
import 'package:chatting_app/utils/extension/box_extension.dart';
import 'package:chatting_app/utils/src/img_string.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ChatListContent extends StatelessWidget {
  const ChatListContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView.builder(
      itemBuilder: (c, i) => _userListItem(),
      itemCount: 10,
    ));
  }

  Widget _userListItem() {
    return Container(
      color: AppColor.lightGrey,
      margin: const EdgeInsets.only(top: 13),
      padding: const EdgeInsets.symmetric(horizontal: 38, vertical: 20),
      child: Row(
        children: [
          SvgPicture.asset(
            ImgString.profileLogo,
            width: 60,
            height: 60,
          ),
          13.widthBox,
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "The Ngoding",
                      style: AppFont.headerBlack,
                    ),
                    Text(
                      "Kemaren",
                      style: AppFont.input,
                    )
                  ],
                ),
                9.heightBox,
                Text(
                  "Besok ketemuan jam 10 asdfla alsdfjaldfj;asjfa",
                  style: AppFont.input,
                  overflow: TextOverflow.ellipsis,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
