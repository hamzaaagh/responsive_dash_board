import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dash_board/Core/Models/User_Info_Model.dart';
import 'package:responsive_dash_board/Core/Utils/app_styles.dart';

class UserInfoLitTile extends StatelessWidget {
  final UserInfoModel user;
  const UserInfoLitTile({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: const Color(0xFFFAFAFA),
      child: ListTile(
        leading: SvgPicture.asset(user.image),
        title: Text(
          user.title,
          style: AppStyles.styleRegular16(
            context,
          ).copyWith(fontWeight: FontWeight.w600),
        ),
        subtitle: FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(user.subtitle, style: AppStyles.styleRegular12(context)),
        ),
      ),
    );
  }
}
