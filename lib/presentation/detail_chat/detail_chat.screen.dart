import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'controllers/detail_chat.controller.dart';

class DetailChatScreen extends GetView<DetailChatController> {
  const DetailChatScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DetailChatScreen'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'DetailChatScreen is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
