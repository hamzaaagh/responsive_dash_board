import 'package:flutter/material.dart';
import 'package:responsive_dash_board/Core/Widgets/custom_parent_widget.dart';

import 'package:responsive_dash_board/Features/Home/Presentation/Views/Widgets/all_expenses_header.dart';
import 'package:responsive_dash_board/Features/Home/Presentation/Views/Widgets/all_expenses_list_view.dart';
import 'package:responsive_dash_board/Features/Home/Presentation/Views/Widgets/quick_invoice_widget.dart';

class AllExpensesWidget extends StatelessWidget {
  const AllExpensesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomParentWidget(
      widget: Column(
        children: [
          AllExpensesHeader(),
          AllExpensesItemListView(),
          const SizedBox(height: 24),
          QuickInvoiceWidget(),
        ],
      ),
    );
  }
}


