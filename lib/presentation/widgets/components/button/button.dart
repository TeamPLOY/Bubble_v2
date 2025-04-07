import 'package:bubble_v2/app/config/app_color.dart';
import 'package:bubble_v2/app/config/app_text_styles.dart';
import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String text;
  const Button({required this.text, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 14),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: AppColor.blue400,
      ),
      child: Center(
        child: Text(text,style: AppTextStyles.M20.copyWith(color: AppColor.white100,),),
      ),
    );
  }
}