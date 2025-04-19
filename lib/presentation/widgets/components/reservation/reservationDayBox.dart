import 'package:bubble_v2/app/config/app_color.dart';
import 'package:bubble_v2/app/config/app_text_styles.dart';
import 'package:flutter/material.dart';

class ReservationDayBox extends StatefulWidget {
  final int month;
  final int date;
  final String day;

  const ReservationDayBox(
      {required this.month, required this.date, required this.day, super.key});

  @override
  _ReservationBoxState createState() => _ReservationBoxState();
}

class _ReservationBoxState extends State<ReservationDayBox> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isSelected = !isSelected;
        });
      },
      child: Container(
        decoration: BoxDecoration(
          color: isSelected ? AppColor.blue400 : AppColor.white100,
          border: Border.all(
            width: 1,
            color: isSelected ? AppColor.blue200 : AppColor.gray200,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "${widget.month}월 ${widget.date}일 ${widget.day}요일",
                style: AppTextStyles.M18.copyWith(
                  color: isSelected ? AppColor.white100 : AppColor.gray500,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
