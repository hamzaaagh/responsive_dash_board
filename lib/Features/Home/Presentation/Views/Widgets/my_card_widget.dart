import 'package:flutter/material.dart';

import 'package:responsive_dash_board/Core/Utils/app_images.dart';
import 'package:responsive_dash_board/Features/Home/Presentation/Views/Widgets/mycard_content.dart';

class MyCardWidget extends StatelessWidget {
  const MyCardWidget({super.key, required this.name, required this.color});
  final String name;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: AspectRatio(
        aspectRatio: 420 / 215,
        child: Container(
          decoration: ShapeDecoration(
            image: DecorationImage(
              image: AssetImage(Assets.imagesCardBackground),
              fit: BoxFit.fill,
            ),
            color: color,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusGeometry.circular(12),
            ),
          ),
          child: MyCardContent(name: name),
        ),
      ),
    );
  }
}
