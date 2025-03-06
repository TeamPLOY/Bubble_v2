import 'package:bubble_v2/app/config/app_color.dart';
import 'package:bubble_v2/presentation/widget/components/notice/noticeBox.dart';
import 'package:bubble_v2/presentation/widget/footer/footer.dart';
import 'package:bubble_v2/presentation/widget/header/header.dart';
import 'package:flutter/material.dart';

class Notice extends StatefulWidget {
  const Notice({super.key});

  @override
  State<Notice> createState() => _NoticeState();
}

class _NoticeState extends State<Notice> {
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    backgroundColor: AppColor.white100,
    body: Column(
      children: [
        const Header(text: '공지사항',),
        Expanded(
          child: ListView.builder(
            itemCount: 12,
            itemBuilder: (context, index) {
              return const Noticebox(title: '호날두', date: '2024-12-12');
            },
          ),
        ),
        const Footer(isClick: 3),
      ],
    ),
  );

  }
}