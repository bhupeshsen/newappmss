import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:newappmss/api-handler/api-handler.dart';
import 'package:newappmss/api-handler/api-repo.dart';
import 'package:newappmss/route/app_pages.dart';
import 'package:newappmss/theme/theme.dart';
import 'package:newappmss/theme/theme_service.dart';





void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Get.put(ApiBaseHelper(), permanent: true);
  Get.put(ApiRepository(Get.find()));
  runApp(
    GetMaterialApp(
      title: "Newsify",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      debugShowCheckedModeBanner: false,
      theme: Themes.light,
      darkTheme: Themes.dark,
      themeMode: ThemeService().theme,
    ),
  );
}

