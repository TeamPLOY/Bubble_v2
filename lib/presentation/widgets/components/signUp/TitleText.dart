import 'package:bubble_v2/app/config/app_color.dart';
import 'package:bubble_v2/app/config/app_text_styles.dart';
import 'package:flutter/material.dart';

class TtileText extends StatelessWidget {
  final String text;
  const TtileText({required this.text,super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8,top: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(text,style: AppTextStyles.M16.copyWith(color: AppColor.gray700),),
          const SizedBox(width: 4,),
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Text('*',style: AppTextStyles.M16.copyWith(color: AppColor.red),),
          )
        ],
      ),
    );
  }
}