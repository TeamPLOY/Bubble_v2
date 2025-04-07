import 'package:bubble_v2/app/config/app_color.dart';
import 'package:bubble_v2/app/config/app_text_styles.dart';
import 'package:flutter/material.dart';

class Comment extends StatefulWidget {
  final bool select;
  const Comment({required this.select,super.key});

  @override
  State<Comment> createState() => _CommentState();
}

class _CommentState extends State<Comment> {
  late String text;

  @override
  void initState() {
    if(!widget.select){
      //이용약관
      text="이용약관이용약관이용약관이용약관이용약관이용약관이용약관이용약관이용약관이용약관이용약관이용약관이용약관이용약관이용약관";
    }
    else{
      //개인정보 처리방침
      text="개인정보 처리방침개인정보 처리방침개인정보 처리방침개인정보 처리방침개인정보 처리방침개인정보 처리방침개인정보 처리방침개인정보 처리방침개인정보 처리방침개인정보 처리방침개인정보 처리방침개인정보 처리방침개인정보 처리방침개인정보 처리방침개인정보 처리방침개인정보 처리방침개인정보 처리방침개인정보 처리방침개인정보 처리방침개인정보 처리방침개인정보 처리방침개인정보 처리방침개인정보 처리방침개인정보 처리방침개인정보 처리방침개인정보 처리방침개인정보 처리방침개인정보 처리방침개인정보 처리방침개인정보 처리방침개인정보 처리방침개인정보 처리방침개인정보 처리방침개인정보 처리방침개인정보 처리방침개인정보 처리방침개인정보 처리방침개인정보 처리방침개인정보 처리방침개인정보 처리방침개인정보 처리방침개인정보 처리방침개인정보 처리방침개인정보 처리방침개인정보 처리방침개인정보 처리방침개인정보 처리방침개인정보 처리방침개인정보 처리방침개인정보 처리방침개인정보 처리방침개인정보 처리방침개인정보 처리방침개인정보 처리방침개인정보 처리방침개인정보 처리방침개인정보 처리방침개인정보 처리방침개인정보 처리방침개인정보 처리방침개인정보 처리방침개인정보 처리방침개인정보 처리방침개인정보 처리방침개인정보 처리방침개인정보 처리방침개인정보 처리방침개인정보 처리방침개인정보 처리방침개인정보 처리방침개인정보 처리방침개인정보 처리방침개인정보 처리방침개인정보 처리방침개인정보 처리방침개인정보 처리방침개인정보 처리방침개인정보 처리방침개인정보 처리방침개인정보 처리방침개인정보 처리방침개인정보 처리방침개인정보 처리방침개인정보 처리방침개인정보 처리방침개인정보 처리방침개인정보 처리방침개인정보 처리방침개인정보 처리방침개인정보 처리방침";
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12,left: 26),
      child: Container(
        height: 200,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(4)),
          color: AppColor.gray100
        ),
        padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 10),
        child: ListView(
          shrinkWrap: true,
          children: [
            Text(text,style: AppTextStyles.S12.copyWith(color: AppColor.gray500),),
          ],
        ),
      ),
    );
  }
}