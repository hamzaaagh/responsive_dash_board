import 'package:flutter/material.dart';
import 'package:responsive_dash_board/Core/Widgets/custom_drawer.dart';
import 'package:responsive_dash_board/Features/Home/Presentation/Views/Widgets/all_expenses_widget.dart';
import 'package:responsive_dash_board/Features/Home/Presentation/Views/Widgets/income_section.dart';
import 'package:responsive_dash_board/Features/Home/Presentation/Views/Widgets/quick_invoice_widget.dart';

class HomeTabletLayout extends StatelessWidget {
  const HomeTabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(flex: 1, child: const CustomDrawer()),
        const SizedBox(width: 32),
        const Expanded(
          flex: 3,
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(child: AllExpensesWidget()),
              SliverToBoxAdapter(child: QuickInvoiceWidget()),
              SliverToBoxAdapter(child: IncomeSection()),
            ],
          ),
        ),
      ],
    );
  }
}
