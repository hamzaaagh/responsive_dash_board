import 'package:flutter/material.dart';
import 'package:responsive_dash_board/Core/Models/Item_Model.dart';
import 'package:responsive_dash_board/Features/Home/Presentation/Views/Widgets/all_expenses_item.dart';

class AllExpensesItemListView extends StatefulWidget {
  const AllExpensesItemListView({super.key, required this.items});
  final List<ItemModel> items;

  @override
  State<AllExpensesItemListView> createState() => _AllExpensesItemListViewState();
}

class _AllExpensesItemListViewState extends State<AllExpensesItemListView> {
  // المتغير داخل الـ State ليكون خاصاً بهذه الودجت فقط
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: widget.items.asMap().entries.map((entry) {
        int idx = entry.key;
        ItemModel item = entry.value;

        return Expanded(
          child: GestureDetector(
            onTap: () {
              if (activeIndex != idx) {
                setState(() {
                  activeIndex = idx;
                });
              }
            },
            child: Padding(
              // إضافة padding جانبي فقط للعنصر الأوسط (إذا كان هناك 3 عناصر)
              padding: EdgeInsets.symmetric(horizontal: idx == 1 ? 12 : 0),
              child: AllExpensesItem(
                item: item,
                isActive: idx == activeIndex,
              ),
            ),
          ),
        );
      }).toList(),
    );
  }
}