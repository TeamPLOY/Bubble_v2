import 'package:bubble_v2/app/config/app_color.dart';
import 'package:bubble_v2/app/config/app_text_styles.dart';
import 'package:bubble_v2/controller/termController.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class Isdropdown extends StatefulWidget {
  final bool select;
  final String text;
  const Isdropdown({required this.select,required this.text,super.key});

  @override
  State<Isdropdown> createState() => _IsdropdownState();
}

class _IsdropdownState extends State<Isdropdown> {
  bool isdown=false;
  final termConroller = Get.find<Termcontroller>();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 6),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: (){
                    if(widget.select){
                      termConroller.changClick(1);
                    }
                    else{
                      termConroller.changClick(0);
                    }
                },
                child: Row(
                  children: [
                    Obx(()=>widget.select?termConroller.isClick[1]?SvgPicture.asset('assets/images/terms/blue.svg'):SvgPicture.asset('assets/images/terms/check.svg'):termConroller.isClick[0]?SvgPicture.asset('assets/images/terms/blue.svg'):SvgPicture.asset('assets/images/terms/check.svg'),),
                    
                    const SizedBox(width: 9,),
                    Text('(필수) ${widget.text}',style: AppTextStyles.R16.copyWith(color: AppColor.gray500),)
                  ],
                ),
              ),
              GestureDetector(
                onTap: (){
                  setState(() {
                    isdown=!isdown;
                  });
                  termConroller.changeDrop(widget.select);
                },
                child: !isdown?SvgPicture.asset('assets/images/terms/back.svg'):SvgPicture.asset('assets/images/terms/down.svg'))
            ],
          ),
        ),
      ],
    );
  }
}