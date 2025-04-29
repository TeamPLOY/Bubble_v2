import 'package:bubble_v2/app/config/app_color.dart';
import 'package:bubble_v2/app/config/app_text_styles.dart';
import 'package:bubble_v2/presentation/page/reservation/reservation_result.dart';
import 'package:bubble_v2/components/button/button.dart';
import 'package:flutter/material.dart';
import 'package:bubble_v2/presentation/widgets/header/header.dart';
import 'package:bubble_v2/presentation/widgets/TabBars/TabBars.dart';
import 'package:bubble_v2/components/reservation/reservationMachineBox.dart';
import 'package:bubble_v2/components/reservation/reservationDayBox.dart';

class ReservationPage extends StatelessWidget {
  const ReservationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.white100,
        body: Column(
          children: [
            const Header(text: "예약", url: "Reservation"),
            Expanded(
              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 24,
                          ),
                          Text(
                            "세탁실을 이용할 날짜와",
                            style: AppTextStyles.S24
                                .copyWith(color: AppColor.black),
                            textAlign: TextAlign.left,
                          ),
                          Text(
                            "기기를 선택하세요!",
                            style: AppTextStyles.S24
                                .copyWith(color: AppColor.black),
                            textAlign: TextAlign.left,
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          Text(
                            "일주일에 1회 사용으로 제한합니다",
                            style: AppTextStyles.M14
                                .copyWith(color: AppColor.blue400),
                            textAlign: TextAlign.left,
                          ),
                          const SizedBox(
                            height: 24,
                          ),
                          Text(
                            "날짜 선택",
                            style: AppTextStyles.S20
                                .copyWith(color: AppColor.black),
                            textAlign: TextAlign.left,
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          GridView.builder(
                            shrinkWrap: true,
                            physics:
                                const NeverScrollableScrollPhysics(), // 내부 스크롤 막기
                            itemCount: 5,
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              mainAxisSpacing: 8.0,
                              crossAxisSpacing: 8.0,
                              childAspectRatio: 2.5,
                            ),
                            itemBuilder: (context, index) {
                              return ReservationDayBox(
                                month: 1,
                                date: index + 1,
                                day: "화", // 각 아이템의 텍스트
                              );
                            },
                          ),
                          const SizedBox(
                            height: 28,
                          ),
                          Text(
                            "기기 선택",
                            style: AppTextStyles.S20
                                .copyWith(color: AppColor.black),
                            textAlign: TextAlign.left,
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          GridView.builder(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: 4,
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              mainAxisSpacing: 8.0,
                              crossAxisSpacing: 8.0,
                              childAspectRatio: 2.5,
                            ),
                            itemBuilder: (context, index) {
                              return ReservationMachineBox(
                                text: "세탁기 ${index + 1}",
                              );
                            },
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          GestureDetector(
                            child: const Button(text: "예약하기"),
                            onTap: () => {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const ReservationResult())),
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const TabBars(isClick: 2),
          ],
        ),
      ),
    );
  }
}
