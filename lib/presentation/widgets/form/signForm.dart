import 'package:bubble_v2/app/config/app_color.dart';
import 'package:bubble_v2/app/config/app_text_styles.dart';
import 'package:flutter/material.dart';

class Signform extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  const Signform({required this.controller,required this.hintText,super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        border: Border.all(color: AppColor.gray300,width: 1),
      ),
      height: 44,
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: TextField(
        controller: controller,
        style: AppTextStyles.M14.copyWith(color: AppColor.gray900),
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: AppTextStyles.M14.copyWith(color: AppColor.gray300,letterSpacing: 0),
              border: InputBorder.none, // 기본 밑줄 제거
              enabledBorder: InputBorder.none, // 활성화 상태 밑줄 제거
              focusedBorder: InputBorder.none, // 포커스 시 밑줄 제거
              disabledBorder: InputBorder.none, // 비활성화 상태 밑줄 제거
              // contentPadding: EdgeInsets.zero, // 내부 패딩 조정 (선택사항)
          ),
        
      ),
    );
  }
}