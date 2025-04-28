import 'package:bubble_v2/presentation/page/home.dart';
import 'package:bubble_v2/presentation/widgets/components/button/homebutton.dart';
import 'package:bubble_v2/presentation/widgets/components/button/reservationbutton.dart';
import 'package:flutter/material.dart';
import 'package:bubble_v2/app/config/app_color.dart';
import 'package:bubble_v2/app/config/app_text_styles.dart';
import 'package:bubble_v2/presentation/widgets/header/header.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:bubble_v2/presentation/widgets/components/my/columnText.dart';

class ReservationResult extends StatefulWidget {
  const ReservationResult({super.key});

  @override
  State<ReservationResult> createState() => _ReservationResultState();
}

class _ReservationResultState extends State<ReservationResult> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.white100,
        body: Column(
          children: [
            const Header(text: "예약", url: "ReservationResult"),
            Expanded(
              child: ListView(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                children: [
                  Column(
                    children: [
                      const SizedBox(
                        height: 80,
                      ),
                      SvgPicture.asset('assets/icons/check.svg'),
                      const SizedBox(
                        height: 2,
                      ),
                      Text(
                        "예약완료",
                        style:
                            AppTextStyles.S24.copyWith(color: AppColor.black),
                      ),
                      const SizedBox(
                        height: 2,
                      ),
                      Text(
                        "세탁실을 이용해보세요!",
                        style:
                            AppTextStyles.M14.copyWith(color: AppColor.gray500),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: AppColor.gray50,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 24),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Columntext(text: 'B42', title: '세탁실'),
                              SizedBox(height: 20),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Columntext(text: '2025-04-25', title: '예약날짜'),
                                  Columntext(text: '수요일', title: '예약요일'),
                                  SizedBox(),
                                ],
                              ),
                              SizedBox(height: 20),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Columntext(text: '워시타워1', title: '에약 세탁 기기'),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                              child: const Homebutton(),
                              onTap: () {
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const HomePage(), // 홈화면으로 이동
                                  ),
                                );
                              }),
                          const SizedBox(
                            width: 10,
                          ),
                          GestureDetector(
                              child: const Reservationbutton(),
                              onTap: () {
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const ReservationResult(),
                                  ),
                                );
                              }),
                        ],
                      )
                    ],
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
