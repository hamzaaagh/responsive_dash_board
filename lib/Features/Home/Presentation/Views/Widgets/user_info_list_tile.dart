import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dash_board/Core/Utils/app_styles.dart';

class UserInfoLitTile extends StatelessWidget {
  final String image;
  final String title;
  final String subtitle;
  UserInfoLitTile({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: const Color(0xFFFAFAFA),
      child: ListTile(
        leading: SvgPicture.asset(image),
        title: Text(title, style: AppStyles.styleSemiBold16(context)),
        subtitle: Text(subtitle, style: AppStyles.styleRegular12(context)),
      ),
    );
  }
}
