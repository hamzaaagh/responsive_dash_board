import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dash_board/Core/Utils/app_images.dart';
import 'package:responsive_dash_board/Core/Utils/app_styles.dart';

class MyCardContent extends StatelessWidget {
  const MyCardContent({super.key, required this.name});

  final String name;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Card Name",
                    maxLines: 1,
                    style: AppStyles.styleRegular12(
                      context,
                    ).copyWith(color: Colors.white),
                  ),
                  FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(
                      name,
                      maxLines: 1,
                      style: AppStyles.styleMedium16(
                        context,
                      ).copyWith(color: Colors.white),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: SvgPicture.asset(Assets.imagesGallery),
              ),
            ],
          ),
        ),
        Expanded(child: const SizedBox()),
        Padding(
          padding: const EdgeInsets.only(right: 14),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  "0992637 82828 8383",
                  style: AppStyles.styleSemiBold20(
                    context,
                  ).copyWith(color: Colors.white),
                ),
              ),

              FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  "20/9 2004",
                  style: AppStyles.styleRegular12(
                    context,
                  ).copyWith(color: Colors.white),
                ),
              ),
              FittedBox(
                fit: BoxFit.scaleDown,
                child: const SizedBox(height: 8),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
