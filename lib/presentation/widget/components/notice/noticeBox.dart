import 'package:bubble_v2/app/config/app_color.dart';
import 'package:bubble_v2/app/config/app_text_styles.dart';
import 'package:flutter/material.dart';

class Noticebox extends StatelessWidget {
  final String title;
  final String date;
  const Noticebox({required this.title,required this.date,super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColor.white100,
        border: Border(bottom: BorderSide(color: AppColor.gray300,width: 1))
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 26),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(title,style: AppTextStyles.R20.copyWith(color: AppColor.gray900)),
                  const SizedBox(height: 12,),
                  Text(date,style: AppTextStyles.M14.copyWith(color: AppColor.gray400),)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}