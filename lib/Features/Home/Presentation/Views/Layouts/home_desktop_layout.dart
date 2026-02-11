import 'package:flutter/material.dart';
import 'package:responsive_dash_board/Features/Home/Presentation/Views/Widgets/custom_drawer.dart';

class HomeDesktopLayout extends StatelessWidget {
  const HomeDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        SizedBox(width: 250, child: CustomDrawer()),
        SizedBox(width: 16),
      ],
    );
  }
}
