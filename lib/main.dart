import 'package:bubble_v2/app/config/app_color.dart';
import 'package:bubble_v2/presentation/page/alram.dart';
import 'package:bubble_v2/presentation/page/login.dart';
import 'package:bubble_v2/presentation/page/notice.dart';
import 'package:bubble_v2/presentation/page/noticeDetail.dart';
import 'package:bubble_v2/presentation/page/psChange/psChange.dart';
import 'package:bubble_v2/presentation/page/psChange/psChangeEmail.dart';
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
      getPages: [
        GetPage(name: '/Login', page: ()=>LoginPage()),
        GetPage(name: '/SignUp', page: ()=>const SignUpPage()),
        GetPage(name: '/Notice', page: ()=>const NoticePage()),
        GetPage(name: '/NoticeDetail/:id', page: ()=>NoticeDetailPage()),
        GetPage(name: '/PsChangeEmail', page:()=> Pschangeemail()),
        GetPage(name: '/PsChange', page:()=> Pschange()),
        GetPage(name: '/Alram', page: ()=> AlramPage())
      ],
      debugShowCheckedModeBanner: false,
      initialRoute: '/Alram',
    );
  }
}