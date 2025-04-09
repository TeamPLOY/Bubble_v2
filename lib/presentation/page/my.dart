import 'package:bubble_v2/app/config/app_color.dart';
import 'package:bubble_v2/presentation/widgets/components/my/columnText.dart';
import 'package:bubble_v2/presentation/widgets/footer/footer.dart';
import 'package:bubble_v2/presentation/widgets/header/Header.dart';
import 'package:bubble_v2/app/config/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MyPage extends StatefulWidget {
  const MyPage({super.key});

  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  final isUpdate = false; //ture가 되면 업데이트 글자가 나와야 함 이건 백엔드나 따로 버전 관리 해야 될듯

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.white100,
        body: Column(
          children: [
            const Header(text: 'MY'),
            Expanded(
              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 24,
                        ),

                        //큰 박스
                        Container(
                            decoration: BoxDecoration(
                              color: AppColor.gray50,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 24),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Columntext(
                                            text: 'A동 427호', title: '호실'),
                                        Columntext(text: '이정호', title: '이름'),
                                        SizedBox(),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    const Columntext(
                                        text: 'A동 427호', title: '호실'),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        const Columntext(
                                            text: '2023056@bssm.hs.kr',
                                            title: '이메일 계정'),
                                        GestureDetector(
                                            onTap: () {},
                                            child: Text(
                                              '로그아웃',
                                              style: AppTextStyles.R14.copyWith(
                                                  color: AppColor.gray500),
                                            ))
                                      ],
                                    ),
                                  ],
                                ))),
                        const SizedBox(
                          height: 12,
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 15),
                          decoration: BoxDecoration(
                            color: AppColor.gray50,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '개인정보 처리방침',
                                style: AppTextStyles.R18
                                    .copyWith(color: AppColor.gray800),
                              ),
                              GestureDetector(
                                  onTap: () {},
                                  child: SvgPicture.asset(
                                      'assets/images/my/back.svg'))
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 15),
                          decoration: BoxDecoration(
                            color: AppColor.gray50,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '문의하기',
                                style: AppTextStyles.R18
                                    .copyWith(color: AppColor.gray800),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 15),
                          decoration: BoxDecoration(
                            color: AppColor.gray50,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '문의하기',
                                style: AppTextStyles.R18
                                    .copyWith(color: AppColor.gray800),
                              ),
                              isUpdate?GestureDetector(
                                  onTap: () {},
                                  child: Text(
                                    '업데이트',
                                    style: AppTextStyles.R18
                                        .copyWith(color: AppColor.blue400),
                                  )):const SizedBox()
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const Footer(isClick: 4),
          ],
        ),
      ),
    );
  }
}
