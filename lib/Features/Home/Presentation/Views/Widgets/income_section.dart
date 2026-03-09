import 'package:flutter/material.dart';
import 'package:responsive_dash_board/Core/Widgets/custom_parent_widget.dart';
import 'package:responsive_dash_board/Features/Home/Presentation/Views/Widgets/Income_list.dart';
import 'package:responsive_dash_board/Features/Home/Presentation/Views/Widgets/income_chart.dart';
import 'package:responsive_dash_board/Features/Home/Presentation/Views/Widgets/income_header.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomParentWidget(
      widget: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const IncomeHeader(),
          const SizedBox(height: 16),
          SizedBox(
            height: 230,
            child: Row(
              children: const [
                Expanded(
                  child: AspectRatio(aspectRatio: 1, child: IncomeChart()),
                ),
                SizedBox(width: 16),
                Expanded(flex: 2, child: IncomeItems()),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
