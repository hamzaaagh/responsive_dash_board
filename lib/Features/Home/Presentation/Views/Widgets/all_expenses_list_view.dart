import 'package:flutter/material.dart';
import 'package:responsive_dash_board/Core/Models/Item_Model.dart';
import 'package:responsive_dash_board/Features/Home/Presentation/Views/Widgets/all_expenses_item.dart';

class AllExpensesItemListView extends StatelessWidget {
  const AllExpensesItemListView({super.key, required this.items});

  final List<ItemModel> items;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: items.asMap().entries.map((entry) {
        int idx = entry.key;
        ItemModel item = entry.value;
        return Expanded(
          child: idx == 1
              ? Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: AllExpensesItem(item: item),
                )
              : Expanded(child: AllExpensesItem(item: item)),
        );
      }).toList(),
    );
  }
}