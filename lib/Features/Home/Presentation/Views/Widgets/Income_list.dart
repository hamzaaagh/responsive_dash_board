import 'package:flutter/material.dart';
import 'package:responsive_dash_board/Features/Home/Presentation/Views/Widgets/Income_item.dart';

class IncomeItems extends StatelessWidget {
  const IncomeItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IncomeItem(
          title: "Design service",
          color: Color(0xff208CC8),
          amount: "40 %",
        ),
        IncomeItem(
          title: "Design product",
          color: Color(0xff4EB7F2),
          amount: "30 %",
        ),
        IncomeItem(
          title: "Product royalti",
          color: Color(0xff064061),
          amount: "20 %",
        ),
        IncomeItem(
          title: "Other",
          color: Color(0xffE2DECD),
          amount: "10 %",
        ),
      ],
    );
  }
}