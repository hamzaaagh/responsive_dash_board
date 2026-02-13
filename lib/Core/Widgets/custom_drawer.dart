import 'package:flutter/material.dart';
import 'package:responsive_dash_board/Core/Utils/app_images.dart';
import 'package:responsive_dash_board/Core/Widgets/user_logout_options.dart';
import 'package:responsive_dash_board/Features/Home/Presentation/Views/Widgets/user_info_list_tile.dart';
import 'package:responsive_dash_board/Core/Widgets/drawer_list_view.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: UserInfoLitTile(
            image: Assets.imagesAvatar3,
            title: "hamza ghafar",
            subtitle: "hamza@gmail.com",
          ),
        ),
        DrawerListView(),
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            children: [
              Expanded(child: const SizedBox()),
              Userlogoutoptions(),
            ],
          ),
        ),
        // const SizedBox(height: 48),

        //const SizedBox(height: 48),
      ],
    );
  }
}
