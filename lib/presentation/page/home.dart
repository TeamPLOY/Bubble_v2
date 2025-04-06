import 'package:flutter/material.dart';
import 'package:bubble_v2/app/config/app_color.dart';
import 'package:bubble_v2/app/config/app_text_styles.dart';
import 'package:bubble_v2/presentation/widgets/footer/footer.dart';
import 'package:bubble_v2/presentation/widgets/header/header.dart';
import 'package:bubble_v2/presentation/widgets/components/home/machineBox.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.white100,
        body: Column(
          children: [
            const Header(text: "윤뎌윤됴의 버블"),

            // 타이틀 영역
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "세탁실 B32",
                    style: AppTextStyles.B20.copyWith(color: AppColor.gray800),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    "세탁기 시간을 확인해보세요!",
                    style: AppTextStyles.M18.copyWith(color: AppColor.gray800),
                  ),
                ],
              ),
            ),

            // 세탁기 리스트
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: ListView(children: const [
                  MachineBox(name: "세탁기 1", function: true, time: "11:01"),
                ]),
              ),
            ),
            const Footer(isClick: 1),
          ],
        ),
      ),
    );
  }
}
