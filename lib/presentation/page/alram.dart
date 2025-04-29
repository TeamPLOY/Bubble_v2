import 'package:bubble_v2/app/config/app_color.dart';
import 'package:bubble_v2/components/alram/alrambox.dart';
import 'package:bubble_v2/presentation/widgets/header/Header.dart';
import 'package:flutter/material.dart';

class AlramPage extends StatefulWidget {
  const AlramPage({super.key});

  @override
  State<AlramPage> createState() => _AlramPageState();
}

class _AlramPageState extends State<AlramPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.white100,
        body: Column(
          children: [
            const Header(
              text: '알림',
              url: 'Login',
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: ListView.separated(
                  separatorBuilder: (context, index) => const SizedBox(
                    height: 20,
                  ),
                  itemCount: 12,
                  itemBuilder: (context, index) {
                    return const Alrambox(
                      isMachine: true,
                      date: '01.15',
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
