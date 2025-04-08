import 'package:bubble_v2/app/config/app_color.dart';
import 'package:bubble_v2/app/config/app_text_styles.dart';
import 'package:bubble_v2/presentation/widgets/components/button/button.dart';
import 'package:bubble_v2/presentation/widgets/form/InputForm.dart';
import 'package:bubble_v2/presentation/widgets/header/Noheader.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwodController = TextEditingController();

  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.white100,
        body: Column(
          children: [
            //헤더
            const NoHeader(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //coments 완
                  const SizedBox(
                    height: 76,
                  ),
                  Text(
                    '안녕하세요',
                    style: AppTextStyles.M28.copyWith(color: AppColor.gray700),
                  ),
                  Row(
                    children: [
                      Text(
                        '서비스 ',
                        style:
                            AppTextStyles.M28.copyWith(color: AppColor.gray700),
                      ),
                      Text(
                        '버블',
                        style:
                            AppTextStyles.S28.copyWith(color: AppColor.gray700),
                      ),
                      Text(
                        '입니다.',
                        style:
                            AppTextStyles.M28.copyWith(color: AppColor.gray700),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    '서비스 이용을 위해 로그인을 진행해주세요',
                    style: AppTextStyles.R16.copyWith(color: AppColor.gray400),
                  ),
                  const SizedBox(
                    height: 40,
                  ),

                  //Input
                  Inputform(
                      ispassword: false,
                      titleText: '이메일 주소',
                      controller: emailController,
                      hintText: '이메일 주소를 입력해주세요.'),
                  const SizedBox(
                    height: 20,
                  ),
                  Inputform(
                      ispassword: true,
                      titleText: '비밀번호',
                      controller: passwodController,
                      hintText: '비밀번호 입력해주세요.'),
                  const SizedBox(
                    height: 12,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                          onTap: () {},
                          child: Text(
                            '이메일/비밀번호 찾기',
                            style: AppTextStyles.M14
                                .copyWith(color: AppColor.gray400),
                          ))
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Button(text: '로그인'),
                  const SizedBox(
                    height: 12,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '계정이 없다면? ',
                        style:
                            AppTextStyles.M14.copyWith(color: AppColor.gray400),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Text(
                          '회원가입',
                          style: AppTextStyles.S14
                              .copyWith(color: AppColor.blue400),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
