import 'package:get/get.dart';
import 'package:getx_template/app/data/models/providers/provider.dart';
import 'package:getx_template/app/modules/home/controllers/user_controller.dart';

import '../controllers/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<UserController>(
      () => UserController(),
    );
    Get.lazyPut<HomeController>(
      () => HomeController(),
    );
    Get.lazyPut(() => UserProvider());
  }
}
