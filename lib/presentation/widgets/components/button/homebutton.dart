import 'package:flutter/material.dart';
import 'package:bubble_v2/app/config/app_color.dart';
import 'package:bubble_v2/app/config/app_text_styles.dart';

class Homebutton extends StatefulWidget {
  const Homebutton({super.key});

  @override
  State<Homebutton> createState() => _HomebuttonState();
}

class _HomebuttonState extends State<Homebutton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColor.gray200,
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 48),
          child: Text(
            "홈으로 가기",
            style: AppTextStyles.M16.copyWith(color: AppColor.gray500),
          ),
        ),
      ),
    );
  }
}
