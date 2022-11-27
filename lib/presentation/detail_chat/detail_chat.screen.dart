import 'package:chatting_app/utils/extension/box_extension.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'component/detail_content.dart';
import 'component/detail_footer.dart';
import 'component/detail_header.dart';
import 'controllers/detail_chat.controller.dart';

class DetailChatScreen extends GetView<DetailChatController> {
  const DetailChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          32.heightBox,
          const DetailHeader(),
          const DetailContent(),
          const DetailFooter(),
        ],
      ),
    );
  }
}
