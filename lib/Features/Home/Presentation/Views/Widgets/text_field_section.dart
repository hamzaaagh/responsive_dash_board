import 'package:flutter/material.dart';
import 'package:responsive_dash_board/Features/Home/Presentation/Views/Widgets/custom_buttom.dart';
import 'package:responsive_dash_board/Features/Home/Presentation/Views/Widgets/custom_text_field.dart';

class TextFieldFormSection extends StatelessWidget {
  const TextFieldFormSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Divider(height: 24, color: Colors.grey.withOpacity(0.2)),
        Row(
          children: [
            Expanded(
              child: CustomTextField(
                title: "Customer name",
                hint: "Type customer name",
              ),
            ),
            const SizedBox(width: 40),
            Expanded(
              child: CustomTextField(
                title: "Customer Email",
                hint: "Type customer email",
              ),
            ),
          ],
        ),
        const SizedBox(height: 16),
        Row(
          children: [
            Expanded(
              child: CustomTextField(
                title: "item name ",
                hint: "Type item name",
              ),
            ),
            const SizedBox(width: 40),
            Expanded(
              child: CustomTextField(
                title: "Item mount ",
                hint: "USD",
                icon: Icon(Icons.unfold_more_rounded),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: CustomButton(
                text: "Add more details",
                color: Colors.white,
              ),
            ),
            Expanded(
              child: CustomButton(
                text: "Send Money",
                color: const Color(0xFF4DB7F2),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
