import 'package:bubble_v2/app/config/app_color.dart';
import 'package:bubble_v2/app/config/app_text_styles.dart';
import 'package:bubble_v2/presentation/page/home.dart';
import 'package:bubble_v2/presentation/widgets/components/button/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.white100,
        body: Column(
          children: [
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter, // 180도 방향에 맞게 시작
                    end: Alignment.bottomCenter, // 끝
                    colors: [
                      Color(0xFF4B73FF),
                      Color(0xFF7CDAFF),
                    ],
                    stops: [0.0, 0.98],
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SvgPicture.asset(
                      'assets/images/bear.svg',
                      fit: BoxFit.fill,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 46,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '버블',
                        style:
                            AppTextStyles.B30.copyWith(color: AppColor.gray900),
                      ),
                      Text(
                        '과 함께 세탁실을\n사용해보세요',
                        style:
                            AppTextStyles.M30.copyWith(color: AppColor.gray900),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Text(
                    '세탁기 예약부터 알림, 조회까지.',
                    style: AppTextStyles.R20.copyWith(color: AppColor.gray500),
                  ),
                  const SizedBox(
                    height: 54,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const HomePage()));
                        },
                        child: const Button(
                          text: '시작하기',
                        )),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    '로그인',
                    style: AppTextStyles.M20.copyWith(color: AppColor.gray900),
                  ),
                  const SizedBox(
                    height: 22,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
