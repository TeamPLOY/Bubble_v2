import 'package:bubble_v2/app/config/app_color.dart';
import 'package:bubble_v2/presentation/widgets/components/notice/noticeBox.dart';
import 'package:bubble_v2/presentation/widgets/footer/footer.dart';
import 'package:bubble_v2/presentation/widgets/header/header.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NoticePage extends StatefulWidget {
  const NoticePage({super.key});

  @override
  State<NoticePage> createState() => _NoticeState();
}

class _NoticeState extends State<NoticePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.white100,
      body: Column(
        children: [
          const Header(text: '공지사항',url: 'Login',),
          Expanded(
              child: ListView.builder(
                itemCount: 12,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: (){
                      Get.toNamed('/NoticeDetail/$index');
                    },
                    child:Noticebox(title: '[공지] 2025년 을사년 버블 업데이트 안내', date: '2024-12-12')
                  );
                },
              ),
            ),
          const Footer(isClick: 3),
        ],
      ),
    );
  }
}