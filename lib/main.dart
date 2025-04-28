import 'package:bubble_v2/app/config/app_color.dart';
import 'package:bubble_v2/presentation/page/alram.dart';
import 'package:bubble_v2/presentation/page/home.dart';
import 'package:bubble_v2/presentation/page/my.dart';
import 'package:bubble_v2/presentation/page/notice.dart';
import 'package:bubble_v2/presentation/page/noticeDetail.dart';
import 'package:bubble_v2/presentation/page/onBoarding.dart';
import 'package:bubble_v2/presentation/page/pwChange/pwChange.dart';
import 'package:bubble_v2/presentation/page/pwChange/pwChangeEmail.dart';
import 'package:bubble_v2/presentation/page/reservation/reservation.dart';
import 'package:bubble_v2/presentation/page/signUp.dart';
import 'package:bubble_v2/presentation/page/terms.dart';
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
              selectionHandleColor: AppColor.gray300)),
      getPages: [
        GetPage(name: '/SignUp', page: () => const SignUpPage()),
        GetPage(name: '/Notice', page: () => const NoticePage()),
        GetPage(name: '/NoticeDetail/:id', page: () => NoticeDetailPage()),
        GetPage(name: '/PsChangeEmail', page: () => const Pwchangeemail()),
        GetPage(name: '/PsChange', page: () => const Pwchange()),
        GetPage(name: '/Alram', page: () => const AlramPage()),
        GetPage(name: '/My', page: () => const MyPage()),
        GetPage(name: '/Terms', page: () => const TermsPage()),
        GetPage(name: '/Reservation', page: () => const ReservationPage()),
        GetPage(name: '/OnBoarding', page: () => const OnboardingPage()),
        GetPage(name: '/Home', page: () => const HomePage()),
        GetPage(name: '/ReservationResult', page: () => const ReservationPage())
      ],
      debugShowCheckedModeBanner: false,
      initialRoute: '/OnBoarding',
    );
  }
}
