import 'package:flutter/material.dart';
import 'package:responsive_dash_board/Core/Models/User_Info_Model.dart';
import 'package:responsive_dash_board/Core/Utils/app_images.dart';
import 'package:responsive_dash_board/Core/Utils/app_styles.dart';
import 'package:responsive_dash_board/Core/Widgets/custom_parent_widget.dart';
import 'package:responsive_dash_board/Features/Home/Presentation/Views/Widgets/quick_invoice_header.dart';
import 'package:responsive_dash_board/Features/Home/Presentation/Views/Widgets/user_info_list_tile.dart';

class QuickInvoiceWidget extends StatelessWidget {
  QuickInvoiceWidget({super.key});
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
      image: Assets.imagesAvatar3,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return CustomParentWidget(
      widget: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuickInvoiceHeader(),
          Text("latest transaction", style: AppStyles.styleMedium16(context)),
          Row(
            children: users
                .map(
                  (user) => IntrinsicWidth(child: UserInfoLitTile(user: user)),
                )
                .toList(),
          ),
        ],
      ),
    );
  }
}
