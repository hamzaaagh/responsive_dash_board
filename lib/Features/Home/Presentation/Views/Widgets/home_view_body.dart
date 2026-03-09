import 'package:flutter/material.dart';
import 'package:responsive_dash_board/Core/Widgets/custom_layout_builder.dart';
import 'package:responsive_dash_board/Features/Home/Presentation/Views/Layouts/home_desktop_layout.dart';
import 'package:responsive_dash_board/Features/Home/Presentation/Views/Layouts/home_tablet_layout.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomLayoutBuilder(
      mobilelayout: (context) => const SizedBox(child: Text("data")),
      tabletlayout: (context) => const HomeTabletLayout(),
      desktoplayout: (context) => const HomeDesktopLayout(),
    );
  }
}
  