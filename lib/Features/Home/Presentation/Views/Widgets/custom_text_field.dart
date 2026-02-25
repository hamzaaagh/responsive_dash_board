import 'package:flutter/material.dart';
import 'package:responsive_dash_board/Core/Utils/app_styles.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.title,
    required this.hint,
    this.icon,
  });

  final String title;
  final String hint;
  final Icon? icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: AppStyles.styleMedium16(context)),
        const SizedBox(height: 12),

        TextField(
          decoration: InputDecoration(
            suffixIcon: icon,
            hintText: hint,
            hintStyle: const TextStyle(color: Color(0xFFAAAAAA)),
            fillColor: const Color(0xFFFAFAFA),
            filled: true,
            border: buildBorder(),
            enabledBorder: buildBorder(),
            focusedBorder: buildBorder(),
          ),
        ),
      ],
    );
  }

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(color: Color(0xFFFAFAFA)),
    );
  }
}
