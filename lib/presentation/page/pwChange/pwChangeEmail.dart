import 'package:bubble_v2/app/config/app_color.dart';
import 'package:bubble_v2/app/config/app_text_styles.dart';
import 'package:bubble_v2/presentation/widgets/components/button/button.dart';
import 'package:bubble_v2/presentation/widgets/form/psIputForm.dart';
import 'package:bubble_v2/presentation/widgets/header/Header.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Pwchangeemail extends StatefulWidget {

  Pwchangeemail({super.key});

  @override
  State<Pwchangeemail> createState() => _PschangeemailState();
}

class _PschangeemailState extends State<Pwchangeemail> {
  bool isEmailEmpty=false;
  TextEditingController passwordEmailChangeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.white100,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Header(text: '비밀번호 변경'),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  const SizedBox(height: 88,),
                  Text('기존에 가입하신 이메일을 입력하시면 비밀번호 변경이 가능합니다.',style: AppTextStyles.S20,),
                  const SizedBox(height: 24,),
                  Psiputform(controller: passwordEmailChangeController,hintText: '이메일',isCancel: true,),
                  Row(
                    children: [
                      isEmailEmpty?Text('이메일을 입력해주세요.',style: AppTextStyles.M12.copyWith(color: AppColor.red),):const SizedBox(),
                    ],
                  ),
                  const SizedBox(height: 34,),
                  GestureDetector(
                    onTap: (){
                      if(passwordEmailChangeController.text.isNotEmpty){
                        Get.toNamed('/PsChange');
                      }
                      else{
                        setState(() {
                          isEmailEmpty=true;
                        });
                      }
                    },
                    child: const Button(text: '다음'))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}