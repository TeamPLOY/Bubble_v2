import 'package:bubble_v2/app/config/app_color.dart';
import 'package:bubble_v2/app/config/app_text_styles.dart';
import 'package:bubble_v2/presentation/widget/components/signUp/TitleText.dart';
import 'package:bubble_v2/presentation/widget/form/signForm.dart';
import 'package:bubble_v2/presentation/widget/header/noHeader.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController repasswordController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController roomController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.white100,
      body: Column(
        children: [
          const NoHeader(),
          
          Expanded(
            child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                
                      //타이틀
                      const SizedBox(height: 32,),
                      Text('반가워요',style: AppTextStyles.B20.copyWith(color: AppColor.gray700),),
                      Text('회원정보를 입력해주세요.',style: AppTextStyles.B20.copyWith(color: AppColor.gray700),),
                      const SizedBox(height: 4,),
                      Text('원활한 서비스 제공을 위해 회원정보가 사용됩니다.',style: AppTextStyles.M14.copyWith(color: AppColor.gray500),),
                
                      //email
                      const TtileText(text: '이메일'),
                      Row(
                        children: [
                          Expanded(child: Signform(controller: emailController, hintText: '이메일')),
                          const SizedBox(width: 8,),
                          GestureDetector(
                            child: Container(
                              width: 90,
                              height: 44,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                color: AppColor.blue400,
                              ),
                              child: Center(
                                child: Text('인증하기',style: AppTextStyles.S14.copyWith(color: AppColor.white100),),
                              ),
                            ),
                          )
                        ],
                      ),
                
                      //password
                      const TtileText(text: '비밀번호'),
                      Signform(controller: passwordController, hintText: '6자 이상 작성해주세요.'),
                
                      //repassword
                      const TtileText(text: '비밀번호 확인'),
                      Signform(controller: repasswordController, hintText: '비밀번호를 다시 입력해주세요.'),
                      
                      //name
                      const TtileText(text: '이름'),
                      Signform(controller: nameController, hintText: '이름을 입력해주세요.'),
                      
                      //학번
                      const TtileText(text: '학번'),
                      //drop down 추가 필요
                
                      //기숙사 호실
                      const TtileText(text: '기술사 호실'),
                      Row(
                        children: [
                          //drop down 추가 필요
                
                          const SizedBox(width: 7,),
                          Expanded(child: Signform(controller: roomController, hintText: '호실을 입력해주세요.'))
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}