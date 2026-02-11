import 'package:flutter/material.dart';
import 'package:responsive_dash_board/Core/Utils/app_images.dart';
import 'package:responsive_dash_board/Features/Home/Presentation/Views/Widgets/user_info_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        UserInfoLitTile(
          image: Assets.imagesAvatar3,
          title: "hamza ghafar",
          subtitle: "hamza@gmail.com",
        ),
      ],
    );
  }
}
