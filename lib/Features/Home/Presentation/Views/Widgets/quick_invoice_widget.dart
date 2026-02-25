import 'package:flutter/material.dart';
import 'package:responsive_dash_board/Core/Widgets/custom_parent_widget.dart';
import 'package:responsive_dash_board/Features/Home/Presentation/Views/Widgets/latest_transiction_widget.dart';
import 'package:responsive_dash_board/Features/Home/Presentation/Views/Widgets/quick_invoice_header.dart';

class QuickInvoiceWidget extends StatelessWidget {
  const QuickInvoiceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomParentWidget(
      widget: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuickInvoiceHeader(),
          const SizedBox(height: 16),
          LatestTransictionWidget(),
        ],
      ),
    );
  }
}
