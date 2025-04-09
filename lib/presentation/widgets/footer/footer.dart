import 'package:bubble_v2/app/config/app_color.dart';
import 'package:bubble_v2/app/config/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class Footer extends StatelessWidget {
  final int isClick;
  const Footer({required this.isClick, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      decoration: BoxDecoration(color: AppColor.white100),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {
                Get.toNamed('/Home');
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(isClick == 1
                      ? 'assets/images/footer/Bhome.svg'
                      : 'assets/images/footer/home.svg'),
                  Text(
                    '홈',
                    style: AppTextStyles.R10.copyWith(
                        color:
                            isClick == 1 ? AppColor.blue400 : AppColor.gray900),
                  )
                ],
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(isClick == 2
                      ? 'assets/images/footer/Bcalender.svg'
                      : 'assets/images/footer/calender.svg'),
                  Text(
                    '예약',
                    style: AppTextStyles.R10.copyWith(
                        color:
                            isClick == 2 ? AppColor.blue400 : AppColor.gray900),
                  )
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                Get.toNamed('/Notice');
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(isClick == 3
                      ? 'assets/images/footer/Bloud.svg'
                      : 'assets/images/footer/loud.svg'),
                  Text(
                    '공지사항',
                    style: AppTextStyles.R10.copyWith(
                        color:
                            isClick == 3 ? AppColor.blue400 : AppColor.gray900),
                  )
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                Get.toNamed('/My');
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(isClick == 4
                      ? 'assets/images/footer/Bmy.svg'
                      : 'assets/images/footer/my.svg'),
                  Text(
                    'MY',
                    style: AppTextStyles.R10.copyWith(
                        color:
                            isClick == 4 ? AppColor.blue400 : AppColor.gray900),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
