import 'package:flutter/material.dart';
import 'package:responsive_dash_board/Core/Models/Transiction_Item.dart';
import 'package:responsive_dash_board/Features/Home/Presentation/Views/Widgets/custom_transiction_item.dart';

class TransictionListView extends StatelessWidget {
  const TransictionListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      children: [
        CustomTransictionItem(
          transictionModel: TransictionItem(
            title: "Cash Withdrawal",
            date: "2024-06-01",
            amount: 59.99,
          ),
          income: false,
        ),
        CustomTransictionItem(
          transictionModel: TransictionItem(
            title: "Cash Withdrawal",
            date: "2024-06-02",
            amount: 12.99,
          ),
        ),
        CustomTransictionItem(
          transictionModel: TransictionItem(
            title: "Cash Withdrawal",
            date: "2024-06-03",
            amount: 9.99,
          ),
        ),
      ],
    );
  }
}