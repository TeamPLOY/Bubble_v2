import 'dart:async';
import 'package:bubble_v2/app/config/app_color.dart';
import 'package:bubble_v2/app/config/app_text_styles.dart';
import 'package:bubble_v2/app/controller/dropdownData.dart';
import 'package:bubble_v2/presentation/widget/components/button/graybutton.dart';
import 'package:bubble_v2/presentation/widget/components/signUp/TitleText.dart';
import 'package:bubble_v2/presentation/widget/components/signUp/dropDown.dart';
import 'package:bubble_v2/presentation/widget/form/signForm.dart';
import 'package:bubble_v2/presentation/widget/header/noHeader.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController emailController = TextEditingController(); //이메일
  TextEditingController passwordController = TextEditingController(); //비밀번호 6자 이상
  TextEditingController repasswordController = TextEditingController(); //비밀번호 재확인
  TextEditingController nameController = TextEditingController(); //이름 2글자에서 5글자 내
  TextEditingController roomController = TextEditingController(); //호실 3글자가 들어와야함
  TextEditingController authController = TextEditingController();

  List<List<String>> arrays = [['1','2','3'],['1','2','3','4'],['1','2','3','4','5','6','7','8','9','10','11','12','13','14','15','16'],['A','B']];

  final DropdownController dropdownController = Get.put(DropdownController());

  bool isAuthVisible = false;
  int remainingTime = 300;
  Timer? _timer;

  void startTimer() {
    setState(() {
      isAuthVisible = true;
      remainingTime = 300;
    });

    _timer?.cancel();
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (remainingTime > 0) {
        setState(() {
          remainingTime--;
        });
      } else {
        timer.cancel();
        setState(() {
          isAuthVisible = false;
        });
      }
    });
  }

  void resetTimer() {
    startTimer();
  }

  String formatTime(int seconds) {
    int minutes = seconds ~/ 60;
    int secs = seconds % 60;
    return '$minutes:${secs.toString().padLeft(2, '0')}';
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

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
                  padding: const EdgeInsets.symmetric(horizontal: 20),
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
                            onTap: startTimer,
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
                      if(isAuthVisible)...[
                        //Timer
                        Column(
                          children: [
                            const SizedBox(height: 8,),
                            Signform(controller: authController, hintText: '인증번호 6자리'),
                            const SizedBox(height: 4,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                GestureDetector(
                                  child: Column(
                                    children: [
                                      GestureDetector(
                                        onTap: resetTimer,
                                        child: Text('재전송',style: AppTextStyles.M12.copyWith(color: AppColor.red),
                                      )),
                                      Container(
                                        width: 33,
                                        height: 1,
                                        decoration: BoxDecoration(
                                          color: AppColor.red
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Text(formatTime(remainingTime),style: AppTextStyles.M12.copyWith(color: AppColor.red),),
                              ],
                            )
                          ],
                        ),
                      ],

                      const SizedBox(height: 4,),
                      Row(
                        children: [
                          Text('인증이 완료되었습니다.',style: AppTextStyles.M12.copyWith(color: AppColor.blue400),),
                        ],
                      ),
                
                      //password
                      const TtileText(text: '비밀번호'),
                      Signform(controller: passwordController, hintText: '6자 이상 작성해주세요.'),
                
                      //repassword
                      const TtileText(text: '비밀번호 확인'),
                      Signform(controller: repasswordController, hintText: '비밀번호를 다시 입력해주세요.'),
                      
                      if(repasswordController.text == passwordController.text &&passwordController.text.isNotEmpty)...[
                        const SizedBox(height: 4,),
                        Row(
                          children: [
                            Text('비밀번호가 일치합니다.',style: AppTextStyles.M12.copyWith(color: AppColor.blue400),),
                          ],
                        ),
                      ],


                      //name
                      const TtileText(text: '이름'),
                      Signform(controller: nameController, hintText: '이름을 입력해주세요.'),
                      
                      //학번
                      const TtileText(text: '학번'),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Dropdown(array: arrays[0], isContent: 1),
                          Dropdown(array: arrays[1], isContent: 2),
                          Dropdown(array: arrays[2], isContent: 3),

                        ],
                      ),
                
                      //기숙사 호실
                      const TtileText(text: '기술사 호실'),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Dropdown(array: arrays[3], isContent: 4),
                          const SizedBox(width: 7,),
                          Expanded(child: Signform(controller: roomController, hintText: '호실을 입력해주세요.'))
                        ],
                      ),

                      const SizedBox(height: 36,),
                      Row(
                        //나중에 조건문 걸어서 전부다 빈칸이 차면 없애야됨
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('빈 칸을 모두 작성해주세요.',style: AppTextStyles.M12.copyWith(color: AppColor.red),),
                        ],
                      ),

                      const SizedBox(height: 8,),
                      const Graybutton(text: '회원가입'),
                      const SizedBox(height: 34,)
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