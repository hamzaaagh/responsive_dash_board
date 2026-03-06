import 'package:flutter/material.dart';
import 'package:responsive_dash_board/Features/Home/Presentation/Views/Widgets/active_inactive_dots.dart';

class DotsRow extends StatelessWidget {
  const DotsRow({super.key, required int currentPage})
    : _currentPage = currentPage;

  final int _currentPage;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: List.generate(
        5,
        (index) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4),
          child: CustomDots(
            isactive: _currentPage == index,
            color: index % 2 != 0
                ? const Color(0xffF28B4E)
                : const Color(0xff4EB7F2),
          ),
        ),
      ),
    );
  }
}
