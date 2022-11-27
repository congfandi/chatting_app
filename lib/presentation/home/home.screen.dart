import 'package:chatting_app/infrastructure/navigation/routes.dart';
import 'package:chatting_app/widgets/app_button.dart';
import 'package:chatting_app/widgets/app_input.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'controllers/home.controller.dart';

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeScreen'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            const Text(
              'HomeScreen is working',
              style: TextStyle(fontSize: 20),
            ),
            AppInput(hint: "Email"),
            AppButton(
                text: "Sign In",
                onPressed: () {
                  FirebaseAuth.instance.signOut();
                  Get.offAllNamed(Routes.LOGIN);
                }),
          ],
        ),
      ),
    );
  }
}
