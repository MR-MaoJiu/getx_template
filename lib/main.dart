import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';

import 'app/routes/app_pages.dart';
import 'generated/locales.g.dart';

void main() {
  runApp(
    GetMaterialApp(
      title: "Getx Template",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      debugShowCheckedModeBanner: false,
      translationsKeys: AppTranslation.translations,
      locale: Get.deviceLocale, // 将会按照此处指定的语言翻译（系统语言）
      fallbackLocale: const Locale('zh', 'CN'), // 添加一个回调语言选项，以备上面指定的语言翻译不存在
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.light,
      builder: EasyLoading.init(),
    ),
  );
}
