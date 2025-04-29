import 'package:bubble_v2/components/reservation/reservation_day.dart';
import 'package:bubble_v2/components/reservation/reservation_list.dart';
import 'package:bubble_v2/presentation/widgets/header/header.dart';
import 'package:bubble_v2/presentation/widgets/TabBars/TabBars.dart';
import 'package:flutter/material.dart';
import 'package:bubble_v2/app/config/app_color.dart';

class ReservationListPage extends StatelessWidget {
  const ReservationListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.white100,
        bottomNavigationBar: const TabBars(isClick: 2),
        body: Column(
          children: [
            const Header(text: "예약명단"),
            const SizedBox(
              height: 20,
            ),
            const ReservationDaySelector(),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView.separated(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                itemCount: 4,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {},
                    child: ReservationList(number: index + 1, name: "3107 송윤서"),
                  );
                },
                separatorBuilder: (context, index) =>
                    const SizedBox(height: 12),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
