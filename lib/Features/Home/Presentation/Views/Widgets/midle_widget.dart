import 'package:flutter/material.dart';
import 'package:responsive_dash_board/Features/Home/Presentation/Views/Widgets/all_expenses_widget.dart';

class MidleWidget extends StatelessWidget {
  const MidleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AllExpensesWidget(),
        // const SizedBox(height: 24),
        // Expanded(flex: 2, child: Ink(color: Colors.white)),
      ],
    );
  }
}
