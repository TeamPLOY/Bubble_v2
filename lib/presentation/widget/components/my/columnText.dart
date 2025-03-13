import 'package:flutter/material.dart';
import 'package:bubble_v2/app/config/app_color.dart';
import 'package:bubble_v2/app/config/app_text_styles.dart';

class Columntext extends StatelessWidget {
  final String title;
  final String text;

  const Columntext({required this.text,required this.title,super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title,style: AppTextStyles.R14.copyWith(color: AppColor.gray400),),
          const SizedBox(height: 10,),
          Text(text,style: AppTextStyles.R16.copyWith(color: AppColor.gray900),)
        ],
      ),
    );
  }
}