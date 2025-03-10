import 'package:bubble_v2/app/config/app_color.dart';
import 'package:bubble_v2/app/config/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Psiputform extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  final bool isCancel;
  const Psiputform({required this.isCancel,required this.controller,required this.hintText,super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10,),
      decoration: BoxDecoration(
        color: AppColor.white100,
        border: Border(bottom: BorderSide(color: AppColor.gray300,width: 1))
      ),
      child: Row(
        children: [
          Expanded(
            child: TextFormField(
                  controller: controller,
                  style:AppTextStyles.M16.copyWith(color: AppColor.gray900),
                  decoration: InputDecoration(
                    hintText: hintText,
                    hintStyle: AppTextStyles.M16.copyWith(color: AppColor.gray400),
                        border: InputBorder.none, // 기본 밑줄 제거
                        enabledBorder: InputBorder.none, // 활성화 상태 밑줄 제거
                        focusedBorder: InputBorder.none, // 포커스 시 밑줄 제거
                        disabledBorder: InputBorder.none, // 비활성화 상태 밑줄 제거
                        // contentPadding: EdgeInsets.zero, // 내부 패딩 조정 (선택사항)
                  ),
                ) 
          ),

          const SizedBox(width: 10,),
          isCancel?GestureDetector(
            onTap: (){
              controller.clear();
            },
            child: SvgPicture.asset('assets/images/cancel.svg')):const SizedBox(),
        ],
      ),
    );
  }
}