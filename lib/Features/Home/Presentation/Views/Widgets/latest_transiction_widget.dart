import 'package:flutter/material.dart';
import 'package:responsive_dash_board/Core/Models/User_Info_Model.dart';
import 'package:responsive_dash_board/Core/Utils/app_images.dart';
import 'package:responsive_dash_board/Core/Utils/app_styles.dart';
import 'package:responsive_dash_board/Features/Home/Presentation/Views/Widgets/text_field_section.dart';
import 'package:responsive_dash_board/Features/Home/Presentation/Views/Widgets/user_info_list_tile.dart';

class LatestTransictionWidget extends StatelessWidget {
  LatestTransictionWidget({super.key});
  final List<UserInfoModel> users = [
    UserInfoModel(
      title: "John Doe",
      subtitle: "Software Engineer",
      image: Assets.imagesAvatar1,
    ),
    UserInfoModel(
      title: "Jane Smith",
      subtitle: "Product Manager",
      image: Assets.imagesAvatar2,
    ),
    UserInfoModel(
      title: "Alice Johnson",
      subtitle: "UX Designer",
      image: Assets.imagesAvatar2,
    ),
    UserInfoModel(
      title: "Alice Johnson",
      subtitle: "UX Designer",
      image: Assets.imagesAvatar1,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final tiles = users
        .map((user) => IntrinsicWidth(child: UserInfoLitTile(user: user)))
        .toList();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 16),
        Text("latest transaction", style: AppStyles.styleMedium16(context)),
        const SizedBox(height: 12),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(children: tiles),
        ),
        TextFieldFormSection(),
      ],
    );
  }
}

