import 'package:bubble_v2/app/config/app_text_styles.dart';
import 'package:bubble_v2/presentation/widget/components/button/button.dart';
import 'package:bubble_v2/presentation/widget/header/Header.dart';
import 'package:flutter/material.dart';

class Pschange extends StatelessWidget {
  const Pschange({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Header(text: '비밀번호 변경'),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  const SizedBox(height: 88,),
                  Text('기존에 가입하신 이메일을 입력하시면 비밀번호 변경이 가능합니다.',style: AppTextStyles.S20,),
                  const SizedBox(height: 105,),
                  const Button(text: '다음')
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}