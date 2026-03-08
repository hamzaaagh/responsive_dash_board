import 'package:flutter/material.dart';
import 'package:responsive_dash_board/Core/Models/Transiction_Item.dart';
import 'package:responsive_dash_board/Core/Utils/app_styles.dart';

class CustomTransictionItem extends StatelessWidget {
  const CustomTransictionItem({
    super.key,
    required this.transictionModel,
    this.income = true,
  });
  final TransictionItem transictionModel;
  final bool income;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Card(
        elevation: 0,
        color: Color(0xFFFAFAFA),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: ListTile(
          title: Text(
            transictionModel.title,
            style: AppStyles.styleSemiBold16(context),
          ),
          subtitle: Text(
            transictionModel.date,
            style: AppStyles.styleRegular14(context),
          ),
          trailing: Text(
            '\$${transictionModel.amount.toStringAsFixed(2)}',
            style: AppStyles.styleSemiBold16(
              context,
            ).copyWith(color: income ? Colors.green : Colors.red),
          ),
        ),
      ),
    );
  }
}
