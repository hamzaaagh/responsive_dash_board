import 'package:flutter/material.dart';
import 'package:responsive_dash_board/Core/Models/Drawer_Item.dart';
import 'package:responsive_dash_board/Core/Utils/app_images.dart';
import 'package:responsive_dash_board/Core/Widgets/user_options_list_tile_item.dart';

class UserOptionsListView extends StatelessWidget {
  const UserOptionsListView({super.key});
  
    static final  List<DrawerItem> items = [
  DrawerItem(title: "Dashboard", image: Assets.imagesDashboard),
   DrawerItem(title: "My Transaction", image: Assets.imagesMyTransctions),
   DrawerItem(title: "Statistics", image: Assets.imagesStatistics),
   DrawerItem(title: "Wallet Account", image: Assets.imagesWalletAccount),
   DrawerItem(title: "My Investments", image: Assets.imagesMyInvestments),
     ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: items.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Useroptionslisttile(drawerItem: items[index]),
            );
          },
        ),

        //const Spacer(),
      ],
    );
  }
}
