import 'package:bubble_v2/app/config/app_color.dart';
import 'package:bubble_v2/presentation/page/signUp.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        textSelectionTheme: TextSelectionThemeData(
          cursorColor: AppColor.gray700,
          selectionColor: AppColor.gray300.withOpacity(0.4),
          selectionHandleColor:AppColor.gray300
        )
      ),
      debugShowCheckedModeBanner: false,
      home: SignUpPage(),
    );
  }
}