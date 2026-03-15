import 'package:flutter/material.dart';
import 'package:responsive_dash_board/Core/Models/Item_Model.dart';
import 'package:responsive_dash_board/Core/Utils/app_images.dart';
import 'package:responsive_dash_board/Features/Home/Presentation/Views/Widgets/all_expenses_item.dart';

class AllExpensesItemListView extends StatefulWidget {
  const AllExpensesItemListView({super.key});

  @override
  State<AllExpensesItemListView> createState() =>
      _AllExpensesItemListViewState();
}

class _AllExpensesItemListViewState extends State<AllExpensesItemListView> {
  final List<ItemModel> items = [
    ItemModel(
      title: "Amount",
      date: "April 2022",
      amount: "20.2\$",
      image: Assets.imagesBalance,
    ),
    ItemModel(
      title: "Income",
      date: "April 2022",
      amount: "50.0\$",
      image: Assets.imagesIncome,
    ),
    ItemModel(
      title: "Expenses",
      date: "April 2022",
      amount: "30.0\$",
      image: Assets.imagesExpenses,
    ),
  ];

  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: items.asMap().entries.map((entry) {
        final idx = entry.key;
        final item = entry.value;

        return Expanded(
          child: GestureDetector(
            onTap: () {
              if (activeIndex != idx) {
                setState(() {
                  activeIndex = idx;
                });
              }
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: AllExpensesItem(
                    item: item,
                    isActive: idx == activeIndex,
                  ),
                ),
                SizedBox(width: 4),
              ],
            ),
          ),
        );
      }).toList(),
    );
  }
}
