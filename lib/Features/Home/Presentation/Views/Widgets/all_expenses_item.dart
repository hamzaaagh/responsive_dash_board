import 'package:flutter/material.dart';
import 'package:responsive_dash_board/Core/Models/Item_Model.dart';
import 'package:responsive_dash_board/Features/Home/Presentation/Views/Widgets/all_expenses_active_inactive.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem({super.key, required this.item, required this.isActive});
  final ItemModel item;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    if (isActive) {
      return AllExpencesItemActive(item: item);
    } else {
      return AllExpencesItemInActive(item: item);
    }
  }
}


