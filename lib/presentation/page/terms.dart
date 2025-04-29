import 'package:bubble_v2/app/config/app_color.dart';
import 'package:bubble_v2/app/config/app_text_styles.dart';
import 'package:bubble_v2/controller/termController.dart';
import 'package:bubble_v2/components/button/button.dart';
import 'package:bubble_v2/components/button/graybutton.dart';
import 'package:bubble_v2/components/terms/comment.dart';
import 'package:bubble_v2/components/terms/isDropdown.dart';
import 'package:bubble_v2/presentation/widgets/header/Noheader.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class TermsPage extends StatefulWidget {
  const TermsPage({super.key});
  @override
  State<TermsPage> createState() => _TermsPageState();
}

class _TermsPageState extends State<TermsPage> {
  final termController = Get.put(Termcontroller());
  final String text =
      '버블 서비스 이용을 위해 아래의 약관 동의 및 회원가입이 필요합니다. 필수  항목 미동의 시 가입이 어려우며, 선택 항목에 동의하지 않으셔도 일부 서비스를 제외한 서비스 이용이 가능합니다.';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.white100,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const NoHeader(),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: ListView(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 32,
                      ),
                      Text(
                        '약관동의',
                        style: AppTextStyles.B24,
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Text(
                        text,
                        style:
                            AppTextStyles.R14.copyWith(color: AppColor.gray600),
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      Obx(
                        () => GestureDetector(
                          onTap: () {
                            termController.allClick();
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                color: termController.isClick[0] &&
                                        termController.isClick[1]
                                    ? AppColor.blue400
                                    : AppColor.gray50,
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(
                                    color: AppColor.gray100, width: 1)),
                            padding: const EdgeInsets.only(
                                left: 18, top: 10, bottom: 10),
                            child: Row(
                              children: [
                                termController.isClick[0] &&
                                        termController.isClick[1]
                                    ? SvgPicture.asset(
                                        'assets/images/terms/whiteCheck.svg')
                                    : SvgPicture.asset(
                                        'assets/images/terms/every.svg'),
                                const SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  '전체 동의하기',
                                  style: AppTextStyles.M18.copyWith(
                                      color: termController.isClick[0] &&
                                              termController.isClick[1]
                                          ? AppColor.white100
                                          : AppColor.gray700),
                                ),
                                const SizedBox(
                                  width: 4,
                                ),
                                Text(
                                  '선택 동의 포함',
                                  style: AppTextStyles.R14.copyWith(
                                      color: termController.isClick[0] &&
                                              termController.isClick[1]
                                          ? AppColor.white100
                                          : AppColor.gray400),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Isdropdown(
                        text: '이용약관',
                        select: false,
                      ),
                      Obx(
                        () => termController.isDroped[0]
                            ? const Comment(select: false)
                            : const SizedBox(),
                      ),
                      const SizedBox(height: 20),
                      const Isdropdown(
                        text: '개인정보 처리방침',
                        select: true,
                      ),
                      Obx(
                        () => termController.isDroped[1]
                            ? const Comment(select: true)
                            : const SizedBox(),
                      )
                    ],
                  ),
                ],
              ),
            )),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: GestureDetector(
                  onTap: () {},
                  child: Obx(() =>
                      termController.isClick[0] && termController.isClick[1]
                          ? const Button(text: '회원가입')
                          : const Graybutton(text: '회원가입'))),
            ),
            const SizedBox(
              height: 34,
            )
          ],
        ),
      ),
    );
  }
}
