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
          AllExpensesItemHeader(item: item, color: Color(0xff064061)),

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
          AllExpensesItemHeader(item: item, color: Colors.white),
          // const SizedBox(height: 5),
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

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader({
    super.key,
    required this.item,
    required this.color,
  });

  final ItemModel item;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Flexible(
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 60, maxHeight: 60),
              child: AspectRatio(
                aspectRatio: 1,
                child: Container(
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
              ),
            ),
          ),

          // const SizedBox(width: 40),
          Icon(Icons.arrow_forward_ios, color: color, size: 20),
        ],
      ),
    );
  }
}
