import 'package:bubble_v2/app/config/app_color.dart';
import 'package:bubble_v2/app/config/app_text_styles.dart';
import 'package:bubble_v2/presentation/widget/header/header.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NoticeDetailPage extends StatelessWidget {
  final id = Get.parameters['id'];
  
  final String title='제목';
  final String date = "2022-12-12";
  final String text = "호날두와 손흥민의 이야기\n킴펨베도 있음";

  NoticeDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Header(text: '공지사항',url: 'Notice',),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: ListView(
                children: [
                  const SizedBox(height: 20,),
                  Text(title,style: AppTextStyles.R20.copyWith(color: AppColor.gray800),),
                  const SizedBox(height: 8,),
                  Text(date,style: AppTextStyles.R16.copyWith(color: AppColor.gray400),),
                  const SizedBox(height: 20,),
                  Text(text,style: AppTextStyles.R16.copyWith(color: AppColor.gray800),),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}