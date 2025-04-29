import 'package:bubble_v2/app/config/app_color.dart';
import 'package:bubble_v2/app/config/app_text_styles.dart';
import 'package:flutter/material.dart';

class ReservationList extends StatelessWidget {
  final int number;
  final String name;

  const ReservationList({required this.number, required this.name, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: AppColor.gray50,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Text(
            "워시타워 $number",
            style: AppTextStyles.S18.copyWith(color: AppColor.black),
            textAlign: TextAlign.left,
          ),
          const Spacer(),
          Text(
            name,
            style: AppTextStyles.R18.copyWith(color: AppColor.black),
            textAlign: TextAlign.right,
          ),
        ],
      ),
    );
  }
}
