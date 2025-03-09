import 'package:bubble_v2/app/config/app_color.dart';
import 'package:bubble_v2/app/config/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class Header extends StatelessWidget {
  final String? url;
  final String text;
  const Header({this.url,required this.text, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: Stack(
        children: [
          Positioned(
            left: 20,
            top: 0,
            bottom: 0,
            child: Align(
              alignment: Alignment.centerLeft,
              child: GestureDetector(
                onTap: (){
                  if (url?.isNotEmpty ?? false) {
                    Get.toNamed('/$url');
                  } else {
                    Get.back();
                  }
                },
                child: SvgPicture.asset('assets/images/back.svg')),
            ),
          ),
          Center(
            child: Text(
              text,
              style: AppTextStyles.M18.copyWith(color: AppColor.gray900),
            ),
          ),
        ],
      ),
    );
  }
}