import 'package:bubble_v2/app/config/app_color.dart';
import 'package:bubble_v2/app/config/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Loginform extends StatefulWidget {
  final String label;
  final String hintText;
  final TextEditingController controller;
  final bool isObscure;
  
  Loginform(
    this.label,
    this.hintText,
    this.controller,
    this.isObscure,
  {super.key});

  @override
  State<Loginform> createState() => _LoginformState();
}

class _LoginformState extends State<Loginform> {
  late bool Eyeopen;

  @override
  void initState(){
    Eyeopen=widget.isObscure;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(widget.label,style: AppTextStyles.M16.copyWith(color: AppColor.gray900),),
        const SizedBox(height: 8,),
        Container(
          height: 44,
          decoration: BoxDecoration(
            color: AppColor.white100,
            borderRadius: BorderRadius.circular(4),
            border: Border.all(width: 1,color: AppColor.gray300)
          ),
          child: Padding(
            padding:const  EdgeInsets.symmetric(horizontal: 12),
            child: Row(
              children: [
                Expanded(child: Padding(
                  padding: const EdgeInsets.only(bottom: 14),
                  child: TextFormField(
                    style: AppTextStyles.M14.copyWith(color: AppColor.gray900),
                    
                    cursorColor: AppColor.gray700,
                    controller: widget.controller,
                    obscureText: Eyeopen,
                    decoration: InputDecoration(
                      hintText: widget.hintText,
                      hintStyle: AppTextStyles.M14.copyWith(color: AppColor.gray300),
                      border: InputBorder.none,
                      fillColor: Colors.white
                    ),
                  ),
                ),),
                widget.isObscure==true?
                GestureDetector(
                  onTap: () {
                    setState(() {
                      Eyeopen=!Eyeopen;
                    });
                  },
                  child:SvgPicture.asset(Eyeopen? 'assets/images/eyes.svg':'assets/images/open_eyes.svg',),
                ):const SizedBox(),
              ],
            ),
          ),
        )
      ],
    );
  }
}