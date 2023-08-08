import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_template/generated/locales.g.dart';

import '../controllers/user_controller.dart';

class UserView extends GetView<UserController> {
  const UserView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(LocaleKeys.buttons_login.tr),
          centerTitle: true,
        ),
        body: PageView.builder(
          onPageChanged: (index) {},
          itemBuilder: (context, index) {
            return controller.obx(
              (data) => Text(data?.name ?? ''),
              onEmpty: const Text('No data found'), //空数据显示
              onError: (error) => Text(error!), //出错界面显示
              onLoading: const Text("Loading..."), //加载界面显示
            );
          },
        ));
  }
}
