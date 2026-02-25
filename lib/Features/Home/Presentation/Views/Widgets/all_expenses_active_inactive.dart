import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dash_board/Core/Models/Item_Model.dart';
import 'package:responsive_dash_board/Core/Utils/app_styles.dart';

class AllExpencesItemInActive extends StatelessWidget {
  const AllExpencesItemInActive({super.key, required this.item});

  final ItemModel item;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xffE5E5E5)),
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: const Color(0xffF1F1F1),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: CircleAvatar(
                    backgroundColor: Colors.white.withOpacity(0.2),
                    child: SvgPicture.asset(
                      alignment: Alignment.center,
                      item.image,
                      color: const Color(0xff4EB7F2),
                    ),
                  ),
                ),
                const SizedBox(width: 40),
                const Icon(
                  Icons.arrow_forward_ios,
                  color: Color(0xff064061),
                  size: 20,
                ),
              ],
            ),
          ),
          const SizedBox(height: 34),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(item.title, style: AppStyles.styleSemiBold16(context)),
                const SizedBox(height: 8),
                Text(item.date, style: AppStyles.styleRegular14(context)),
                const SizedBox(height: 16),
                Text(item.amount, style: AppStyles.styleSemiBold24(context)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class AllExpencesItemActive extends StatelessWidget {
  const AllExpencesItemActive({super.key, required this.item});

  final ItemModel item;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xffE5E5E5)),
        color: const Color(0xff4EB7F2),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: const Color(0xffF1F1F1),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: CircleAvatar(
                    backgroundColor: Colors.white.withOpacity(0.1),
                    child: SvgPicture.asset(
                      alignment: Alignment.center,
                      item.image,
                      color: const Color(0xff4EB7F2),
                    ),
                  ),
                ),
                const SizedBox(width: 40),
                Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white.withOpacity(0.8),
                  size: 20,
                ),
              ],
            ),
          ),
          const SizedBox(height: 34),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.title,
                  style: AppStyles.styleSemiBold16(
                    context,
                  ).copyWith(color: Colors.white),
                ),
                const SizedBox(height: 8),
                Text(
                  item.date,
                  style: AppStyles.styleRegular14(
                    context,
                  ).copyWith(color: const Color(0xFFFAFAFA)),
                ),
                const SizedBox(height: 16),
                Text(
                  item.amount,
                  style: AppStyles.styleSemiBold24(
                    context,
                  ).copyWith(color: Colors.white),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
