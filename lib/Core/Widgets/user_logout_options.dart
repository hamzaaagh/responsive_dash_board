import 'package:flutter/material.dart';
import 'package:responsive_dash_board/Core/Models/Drawer_Item_Model.dart';
import 'package:responsive_dash_board/Core/Utils/app_images.dart';
import 'package:responsive_dash_board/Core/Widgets/Isactive_Inactive_drawer_item.dart';

class Userlogoutoptions extends StatelessWidget {
  const Userlogoutoptions({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Column(
        children: [
          Inactivedraweritem(
            drawerItem: DrawerItemModel(
              title: "Setting system",
              image: Assets.imagesSettings,
            ),
          ),
          Inactivedraweritem(
            
            drawerItem: DrawerItemModel(
              title: "Logout account",
              image: Assets.imagesLogout,
            ),
          ),
        ],
      ),
    );
  }
}
