import 'package:flutter/material.dart';
import 'package:bubble_v2/app/config/app_color.dart';
import 'package:bubble_v2/app/config/app_text_styles.dart';

class Reservationbutton extends StatefulWidget {
  const Reservationbutton({super.key});

  @override
  State<Reservationbutton> createState() => _ReservationbuttonState();
}

class _ReservationbuttonState extends State<Reservationbutton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppColor.blue400, borderRadius: BorderRadius.circular(5)),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 38),
          child: Text(
            "예약 상세보기",
            style: AppTextStyles.M16.copyWith(color: AppColor.white100),
          ),
        ),
      ),
    );
  }
}
