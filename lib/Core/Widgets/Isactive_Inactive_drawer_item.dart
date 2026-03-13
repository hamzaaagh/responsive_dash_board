import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dash_board/Core/Models/Drawer_Item_Model.dart';
import 'package:responsive_dash_board/Core/Utils/app_styles.dart';

class Isactivedraweritem extends StatelessWidget {
  const Isactivedraweritem({super.key, required this.drawerItem});

  final DrawerItemModel drawerItem;
  final bool isActive = true;

  @override
  Widget build(BuildContext context) {
    

    return ListTile(
      leading: SvgPicture.asset(drawerItem.image),

      title: 
          Text(drawerItem.title, style: AppStyles.styleBold16(context)),
      trailing: Container(width: 3.267604351043701, color: Color(0xff4EB7F2)),
    );
  }
}

class Inactivedraweritem extends StatelessWidget {
  const Inactivedraweritem({super.key, required this.drawerItem});

  final DrawerItemModel drawerItem;
  final bool isActive = false;

  @override
  Widget build(BuildContext context) {
    
    return ListTile(
      leading: SvgPicture.asset(drawerItem.image),
      title:  Text(drawerItem.title, style: AppStyles.styleRegular16(context)),
    );
  }
}
