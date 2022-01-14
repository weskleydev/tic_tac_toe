import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'app/routes/app_pages.dart';

void main() async {
  await GetStorage.init('scoreboard');
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(
    Container(
      color: Colors.black,
      child: Container(
        alignment: Alignment.center,
        color: Colors.black,
        child: GetMaterialApp(
          title: "TIC-TAE-TOE",
          initialRoute: AppPages.INITIAL,
          debugShowCheckedModeBanner: false,
          getPages: AppPages.routes,
        ),
      ),
    ),
  );
}
