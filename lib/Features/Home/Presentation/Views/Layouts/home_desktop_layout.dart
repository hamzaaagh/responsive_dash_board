import 'package:flutter/material.dart';
import 'package:responsive_dash_board/Core/Utils/app_styles.dart';

import 'package:responsive_dash_board/Core/Widgets/custom_drawer.dart';
import 'package:responsive_dash_board/Core/Widgets/custom_parent_widget.dart';
import 'package:responsive_dash_board/Features/Home/Presentation/Views/Widgets/midle_widget.dart';
import 'package:responsive_dash_board/Features/Home/Presentation/Views/Widgets/my_card_widget.dart';

class HomeDesktopLayout extends StatelessWidget {
  const HomeDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(flex: 1, child: CustomDrawer()),
        const SizedBox(width: 32),
        Expanded(flex: 2, child: MidleWidget()),
        const SizedBox(width: 32),
        Expanded(flex: 1, child: ThirdSection()),
      ],
    );
  }
}

class ThirdSection extends StatelessWidget {
  const ThirdSection({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomParentWidget(
      widget: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("My Card", style: AppStyles.styleSemiBold20(context)),
          const SizedBox(height: 16),
          MyCardWidget(),
        ],
      ),
    );
  }
}
