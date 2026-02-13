import 'package:flutter/material.dart';
import 'package:responsive_dash_board/Core/Utils/app_styles.dart';

class AllExpensesHeaderRange extends StatelessWidget {
  const AllExpensesHeaderRange({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xffE5E5E5)),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Text(
              "Monthly",
              style: AppStyles.styleMedium16(context),
            ),
            const SizedBox(width: 8),
            Icon(
              Icons.unfold_more_rounded,
              color: Color(0xff064061),
            ),
          ],
        ),
      ),
    );
  }
}