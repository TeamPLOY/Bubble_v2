import 'package:bubble_v2/app/config/app_color.dart';
import 'package:bubble_v2/app/config/app_text_styles.dart';
import 'package:flutter/material.dart';

class MachineBox extends StatelessWidget {
  final String name;
  final bool function;
  final String time;

  const MachineBox({
    Key? key,
    required this.name,
    required this.function,
    required this.time,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(12, 12, 12, 12),
      decoration: BoxDecoration(
        color: AppColor.white100,
        border: Border.all(color: AppColor.gray200, width: 1),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "세탁기 1",
            style: AppTextStyles.B12.copyWith(color: AppColor.gray800),
          ),
          const SizedBox(
            height: 4,
          ),
          Row(
            children: [
              Text("작동중",
                  style: AppTextStyles.M12.copyWith(color: AppColor.gray800)),
            ],
          ),
          const SizedBox(height: 6),
          Container(
            padding: const EdgeInsets.fromLTRB(6, 2, 97, 1),
            decoration: BoxDecoration(
              color: AppColor.gray100,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(
              children: [
                Text("00:00",
                    style: AppTextStyles.S12.copyWith(color: AppColor.gray500)),
                const SizedBox(
                  height: 4,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
