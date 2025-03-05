import 'package:bubble_v2/app/config/app_color.dart';
import 'package:bubble_v2/app/config/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Header extends StatelessWidget {
  final String text;
  const Header({required this.text,super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        color: AppColor.white100,
        border: Border(
          bottom: BorderSide(
            color: AppColor.gray100,
            width: 1
          )
        )
      ),
      child: Stack(
        children: [
          Positioned(
            left: 8,
            top: 0,
            bottom: 0,
            child: Center(
              child:  SvgPicture.asset('assets/images/header_back.svg')
            ),
          ),

          Center(
            child: Text(text,style: AppTextStyles.M18,),
          ),
        ],
      ),
    );
  }
}