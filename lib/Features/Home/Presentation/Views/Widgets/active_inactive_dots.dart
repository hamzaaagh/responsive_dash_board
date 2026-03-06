import 'package:flutter/material.dart';

class CustomDots extends StatelessWidget {
  const CustomDots({super.key, required this.isactive, required this.color});
  final bool isactive;
  final Color color; 
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      width: isactive ? 28 : 8,
      height: 8,
      duration: const Duration(milliseconds: 300),
      decoration: BoxDecoration(
        color: isactive ? color : Colors.grey.withOpacity(0.3),
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
