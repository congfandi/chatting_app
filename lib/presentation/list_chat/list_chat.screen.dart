import 'package:chatting_app/utils/extension/box_extension.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'component/chat_list_content.dart';
import 'component/chat_list_footer.dart';
import 'component/chat_list_header.dart';
import 'controllers/list_chat.controller.dart';

class ListChatScreen extends GetView<ListChatController> {
  const ListChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          50.heightBox,
          const ChatListHeader(),
          const ChatListContent(),
          const ChatListFooter(),
        ],
      ),
    );
  }
}
