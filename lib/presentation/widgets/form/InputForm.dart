import 'package:bubble_v2/app/config/app_color.dart';
import 'package:bubble_v2/app/config/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Inputform extends StatefulWidget {
  final String titleText;
  final TextEditingController controller;
  final String hintText;
  final bool ispassword;
  
  const Inputform({required this.ispassword,required this.titleText,required this.controller,required this.hintText,super.key});

  @override
  State<Inputform> createState() => _InputformState();
}

class _InputformState extends State<Inputform> {
  late bool isObscureText;

  @override
  void initState() {
    isObscureText=widget.ispassword;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(widget.titleText,style: AppTextStyles.M16.copyWith(color: AppColor.gray900),),
        const SizedBox(height: 8,),
        //TextFieldForm
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            border: Border.all(color: AppColor.gray300,width: 1),
          ),
          height: 44,
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Row(
            children: [
              Expanded(
                child: TextFormField(
                  controller: widget.controller,
                  style: isObscureText ?AppTextStyles.M24.copyWith(color: AppColor.gray700,letterSpacing: -3):AppTextStyles.M14.copyWith(color: AppColor.gray900),
                  obscureText: isObscureText,
                  decoration: InputDecoration(
                    hintText: widget.hintText,
                    hintStyle: AppTextStyles.M14.copyWith(color: AppColor.gray300,letterSpacing: 0),
                        border: InputBorder.none, // 기본 밑줄 제거
                        enabledBorder: InputBorder.none, // 활성화 상태 밑줄 제거
                        focusedBorder: InputBorder.none, // 포커스 시 밑줄 제거
                        disabledBorder: InputBorder.none, // 비활성화 상태 밑줄 제거
                        // contentPadding: EdgeInsets.zero, // 내부 패딩 조정 (선택사항)
                  ),
                ) 
              ),
              GestureDetector(
                onTap: (){
                  setState(() {
                    isObscureText=!isObscureText;
                  });
                },
                child: widget.ispassword?isObscureText?SvgPicture.asset('assets/images/eyes.svg'):SvgPicture.asset('assets/images/open_eyes.svg'):const SizedBox()
              )
            ],
          ),
        )
      ],
    );
  }
}