import 'dart:convert';

import 'package:get/get.dart';

import '../../../data/models/models.dart';
import '../../../data/models/providers/user_provider.dart';

class UserController extends GetxController with StateMixin<User> {
  User user = User();
  UserProvider userProvider = Get.find();

  ///按照自己的业务逻辑填写这里只是举例
  void postUser() async {
    userProvider.postUser(user);
  }

  void getUser() async {
    //刚开始显示加载中。。
    change(user, status: RxStatus.loading());
    //执行网络请求
    Response response = await userProvider.getUser("007");
    print(">>>>>>${response.body}");
    //请求出错时
    if (response.hasError) {
      change(null, status: RxStatus.error('Error'));
    } else {
      //请求成功时，显示数据
      user = User.fromJson(json.decode('${response.body}'));
      change(user, status: RxStatus.success());
    }
  }

  @override
  void onInit() {
    super.onInit();
    getUser();
  }
}
