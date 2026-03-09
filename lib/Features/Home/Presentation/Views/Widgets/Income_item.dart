import 'package:flutter/material.dart';
import 'package:responsive_dash_board/Core/Utils/app_styles.dart';

class IncomeItem extends StatelessWidget {
  const IncomeItem({
    super.key,
    required this.title,
    required this.color,
    required this.amount,
  });
  final String title;
  final Color color;
  final String amount;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      trailing: Text(
        amount,
        style: AppStyles.styleMedium16(
          context,
        ).copyWith(color: Color(0xff208CC8)),
      ),
      contentPadding: EdgeInsets.zero,
      leading: CircleAvatar(backgroundColor: color, radius: 8),
      title: Text(
        title,
        style: AppStyles.styleRegular14(
          context,
        ).copyWith(color: Color(0xff064061)),
      ),
    );
  }
}