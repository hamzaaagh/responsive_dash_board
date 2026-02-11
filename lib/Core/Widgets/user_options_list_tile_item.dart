import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dash_board/Core/Models/Drawer_Item.dart';
import 'package:responsive_dash_board/Core/Utils/app_styles.dart';

class Useroptionslisttile extends StatelessWidget {
  const Useroptionslisttile({
    super.key,
     required this.drawerItem,
  });
  
  final DrawerItem drawerItem;
   
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(drawerItem.image),
      title: Text(drawerItem.title, style: AppStyles.styleRegular16(context)),
    );
  }
}
