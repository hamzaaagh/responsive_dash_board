import 'package:flutter/material.dart';
import 'package:responsive_dash_board/Core/Models/Drawer_Item.dart';
import 'package:responsive_dash_board/Core/Utils/app_images.dart';
import 'package:responsive_dash_board/Core/Widgets/user_options_list_tile_item.dart';

class Userlogoutoptions extends StatelessWidget {
  const Userlogoutoptions({super.key,});
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Column(
        children: [
          Useroptionslisttile(
            drawerItem: DrawerItem(title: "Setting system", image: Assets.imagesSettings),
          ),
          Useroptionslisttile(
            drawerItem: DrawerItem(title: "Logout account", image: Assets.imagesLogout),
          ),
        ],
      ),
    );
  }
}
