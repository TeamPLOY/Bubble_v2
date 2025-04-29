import 'package:bubble_v2/app/config/app_text_styles.dart';
import 'package:bubble_v2/app/config/app_color.dart';
import 'package:flutter/material.dart';

class ReservationDaySelector extends StatefulWidget {
  const ReservationDaySelector({super.key});

  @override
  State<ReservationDaySelector> createState() => _ReservationDaySelectorState();
}

class _ReservationDaySelectorState extends State<ReservationDaySelector> {
  int selectedIndex = 0;

  final List<String> days = ["월요일", "화요일", "수요일", "목요일"];

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: List.generate(days.length, (index) {
        bool isSelected = index == selectedIndex;
        return GestureDetector(
          onTap: () {
            setState(() {
              selectedIndex = index;
            });
          },
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(days[index],
                  style: isSelected
                      ? AppTextStyles.S16.copyWith(color: AppColor.black)
                      : AppTextStyles.R16.copyWith(color: AppColor.gray500)),
              const SizedBox(height: 4),
              Container(
                height: 3,
                width: 80,
              ),
            ],
          ),
        );
      }),
    );
  }
}
