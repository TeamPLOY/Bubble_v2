import 'package:bubble_v2/app/config/app_color.dart';
import 'package:bubble_v2/app/config/app_text_styles.dart';
import 'package:flutter/material.dart';

class Graybutton extends StatelessWidget {
  final String text;
  const Graybutton({required this.text, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: AppColor.gray200,
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 14),
          child: Text(text,style: AppTextStyles.M20.copyWith(color: AppColor.white100),),
        ),
      ),
    );
  }
}