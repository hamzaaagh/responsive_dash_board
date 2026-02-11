import 'package:flutter/material.dart';

import 'package:responsive_dash_board/Core/Widgets/custom_drawer.dart';

class HomeDesktopLayout extends StatelessWidget {
  const HomeDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        SizedBox(width: 250, child: CustomDrawer()),
        SizedBox(width: 16),
      ],
    );
  }
}
