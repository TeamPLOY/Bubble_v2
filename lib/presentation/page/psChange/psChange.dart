import 'package:bubble_v2/app/config/app_color.dart';
import 'package:bubble_v2/app/config/app_text_styles.dart';
import 'package:bubble_v2/presentation/widget/components/button/button.dart';
import 'package:bubble_v2/presentation/widget/form/psIputForm.dart';
import 'package:bubble_v2/presentation/widget/header/Header.dart';
import 'package:flutter/material.dart';

class Pschange extends StatefulWidget {

  Pschange({super.key});

  @override
  State<Pschange> createState() => _PschangeState();
}

class _PschangeState extends State<Pschange> {
  TextEditingController passwordChangeController = TextEditingController();
  TextEditingController rePasswordChangeController = TextEditingController();

  bool passwordLength=false;
  bool passwordSame=false;

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
                  Text('비밀번호 변경을 위해 작성해주세요.',style: AppTextStyles.S20,),
                  const SizedBox(height: 24,),
                  Psiputform(controller: passwordChangeController,hintText: '6자 이상, 특수문자를 포함해 주세요.',isCancel: false,),
                  Psiputform(controller: rePasswordChangeController,hintText: '비밀번호를 다시 입력해주세요.',isCancel: false,),
                  Row(
                    children: [
                      passwordLength?Text('비밀번호가 짧습니다.',style: AppTextStyles.M12.copyWith(color: AppColor.red),)
                      :passwordSame?Text('비밀번호가 일치하지 않습니다. ',style: AppTextStyles.M12.copyWith(color: AppColor.red),):const SizedBox(),
                    ],
                  ),
                  const SizedBox(height: 34,),
                  GestureDetector(
                    onTap: (){
                      if(passwordChangeController.text.length<=5){
                        setState(() {
                          passwordLength=true;
                        });
                      }
                      else{
                        setState(() {
                          passwordLength=false;
                        });
                      }
                      if(passwordChangeController.text!=rePasswordChangeController.text){
                        setState(() {
                          passwordSame=true;
                        });
                      }
                      else{
                        setState(() {
                          passwordSame=false;
                        });
                      }
                      //홈으로 이동
                      //Get.Named
                    },
                    child: const Button(text: '변경하기'))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}