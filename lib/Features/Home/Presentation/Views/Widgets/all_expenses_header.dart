import 'package:flutter/material.dart';
import 'package:responsive_dash_board/Core/Utils/app_styles.dart';
import 'package:responsive_dash_board/Features/Home/Presentation/Views/Widgets/all_expenses_header_range.dart';

class AllExpensesHeader extends StatelessWidget {
  const AllExpensesHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(12),
              child: Text(
                "All Expenses",
                style: AppStyles.styleSemiBold20(context),
              ),
            ),
            const Spacer(),
            AllExpensesHeaderRange(),
          ],
        ),
      ),
    );
  }
}