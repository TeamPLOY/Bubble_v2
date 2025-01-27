import 'package:bubble_v2/app/config/app_color.dart';
import 'package:bubble_v2/app/config/app_text_styles.dart';
import 'package:bubble_v2/presentation/widget/form/LoginForm.dart';
import 'package:bubble_v2/presentation/widget/form/button/button.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.white100,
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: ListView(
                children: [
                  const SizedBox(height: 76,),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('안녕하세요',style: AppTextStyles.M28.copyWith(color: AppColor.gray700),),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text('서비스 ',style: AppTextStyles.M28.copyWith(color: AppColor.gray700),),
                          Text('버블',style: AppTextStyles.S28.copyWith(color: AppColor.gray700),),
                          Text('입니다.',style: AppTextStyles.M28.copyWith(color: AppColor.gray700),),
                        ],
                      ),
                      const SizedBox(height: 8,),
                      Text('서비스 이용을 위해 로그인을 진행해주세요',style: AppTextStyles.R16.copyWith(color: AppColor.gray400),)
                    ],
                  ),
                  const SizedBox(height: 40,),
                  Column(
                    children: [
                      Loginform('이메일 주소', '이메일 주소를 입력해주세요.', emailController, false),
                      const SizedBox(height: 20,),
                      Loginform('비밀번호', '비밀번호 입력해주세요.', passwordController, true),
                      const SizedBox(height: 12,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text('이메일/비밀번호 찾기',style: AppTextStyles.M14.copyWith(color: AppColor.gray400),)
                        ],
                      ),
                      const SizedBox(height: 20,),
                      const Button(text: '로그인'),
                      const SizedBox(height: 12,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('계정이 없다면 ',style: AppTextStyles.M14.copyWith(color: AppColor.gray400),),
                          Text('회원가입',style: AppTextStyles.S14.copyWith(color: AppColor.blue400),),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      )
    );
  }
}