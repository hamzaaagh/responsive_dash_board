import 'package:flutter/material.dart';

class CustomParentWidget extends StatelessWidget {
  const CustomParentWidget({super.key, required this.widget});
  final Widget widget;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, bottom: 15),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),

        child: Padding(
          padding: const EdgeInsets.all(20),
          child:widget,
        ),
      ),
    );
  }
}