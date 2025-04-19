import 'package:bubble_v2/app/config/app_color.dart';
import 'package:bubble_v2/app/config/app_text_styles.dart';
import 'package:flutter/material.dart';

class ReservationMachineBox extends StatefulWidget {
  final String text;
  const ReservationMachineBox({required this.text, super.key});

  @override
  _ReservationBoxState createState() => _ReservationBoxState();
}

class _ReservationBoxState extends State<ReservationMachineBox> {
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
                widget.text,
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
