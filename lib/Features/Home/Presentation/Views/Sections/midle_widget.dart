import 'package:flutter/material.dart';
import 'package:responsive_dash_board/Features/Home/Presentation/Views/Widgets/all_expenses_widget.dart';
import 'package:responsive_dash_board/Features/Home/Presentation/Views/Widgets/quick_invoice_widget.dart';

class MidleWidget extends StatelessWidget {
  const MidleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: const [
        SliverToBoxAdapter(child: AllExpensesWidget()),
        
        SliverToBoxAdapter(child: QuickInvoiceWidget()),
      ],
    );
  }
}
