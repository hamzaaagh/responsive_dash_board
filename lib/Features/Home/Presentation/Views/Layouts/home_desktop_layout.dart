import 'package:flutter/material.dart';

import 'package:responsive_dash_board/Core/Widgets/custom_drawer.dart';
import 'package:responsive_dash_board/Features/Home/Presentation/Views/Widgets/midle_widget.dart';

class HomeDesktopLayout extends StatelessWidget {
  const HomeDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(flex: 1, child: CustomDrawer()),
        const SizedBox(width: 32),
        Expanded(flex: 3, child: MidleWidget()),
        Expanded(flex: 1, child: SizedBox()),
      ],
    );
  }
}
