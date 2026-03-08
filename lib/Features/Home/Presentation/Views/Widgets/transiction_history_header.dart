import 'package:flutter/material.dart';
import 'package:responsive_dash_board/Core/Utils/app_styles.dart';

class TransictionHistoryHeader extends StatelessWidget {
  const TransictionHistoryHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Transactions History",
              style: AppStyles.styleSemiBold16(context),
            ),
            Text(
              "See All",
              style: AppStyles.styleRegular12(
                context,
              ).copyWith(color: Colors.blue),
            ),
          ],
        ),
        const SizedBox(height: 16),
      ],
    );
  }
}