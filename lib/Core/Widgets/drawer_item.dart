import 'package:flutter/material.dart';
import 'package:responsive_dash_board/Core/Models/Drawer_Item_Model.dart';
import 'package:responsive_dash_board/Core/Widgets/Isactive_Inactive_drawer_item.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem({
    super.key,
    required this.drawerItem,
    required this.isActive,
  });

  final DrawerItemModel drawerItem;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return isActive
        ? Isactivedraweritem(drawerItem: drawerItem)
        : Inactivedraweritem(drawerItem: drawerItem);
  }
}


