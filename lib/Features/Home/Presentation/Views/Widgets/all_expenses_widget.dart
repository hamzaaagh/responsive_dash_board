import 'package:flutter/material.dart';
import 'package:responsive_dash_board/Core/Models/Item_Model.dart';
import 'package:responsive_dash_board/Core/Utils/app_images.dart';
import 'package:responsive_dash_board/Features/Home/Presentation/Views/Widgets/all_expenses_header.dart';
import 'package:responsive_dash_board/Features/Home/Presentation/Views/Widgets/all_expenses_list_view.dart';

class AllExpensesWidget extends StatelessWidget {
  AllExpensesWidget({super.key});
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
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, bottom: 15),
      child: Ink(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),

        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              AllExpensesHeader(),
              AllExpensesItemListView(items: items),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
