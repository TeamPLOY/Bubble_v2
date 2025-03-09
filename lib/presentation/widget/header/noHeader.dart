import 'package:bubble_v2/app/config/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class NoHeader extends StatelessWidget {
  final String? url;
  const NoHeader({this.url,super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        color: AppColor.white100,
        border: Border(bottom: BorderSide(color: AppColor.gray100,width: 1))
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: GestureDetector(
              onTap: (){
                  if (url?.isNotEmpty ?? false) {
                    Get.toNamed('/$url');
                  } else {
                    Get.back();
                  }
              },
              child: SvgPicture.asset('assets/images/back.svg')
            ),
          )
        ],
      ),
    );
  }
}