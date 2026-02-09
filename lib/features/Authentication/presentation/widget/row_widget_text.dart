import 'package:evently_app/features/Authentication/presentation/widget/text_button_widget.dart';
import 'package:flutter/material.dart';

class RowContentText extends StatelessWidget {
  const RowContentText({super.key, required this.onPressed, required this.textButton, required this.text});
  final VoidCallback onPressed;
  final String textButton;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(text , style: Theme.of(context).textTheme.headlineSmall,),
        TextButtonWidget(onPressed: onPressed, text: textButton),
      ],
    );
  }
}
