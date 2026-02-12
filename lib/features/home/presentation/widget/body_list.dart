import 'package:evently_app/core/extension/extensions.dart';
import 'package:evently_app/features/home/presentation/widget/body_content_card.dart';
import 'package:flutter/material.dart';

class BodyList extends StatelessWidget {
  const BodyList({super.key, required this.isSelected});
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: context.height * 0.035,
        left: context.width * 0.025,
        right: context.width * 0.025,
      ),
      child: ListView.separated(
        itemCount: 5,
        separatorBuilder: (context, index) =>
            SizedBox(height: context.height * 0.015),
        itemBuilder: (context, index) =>
            BodyCardContent(initialSelected: isSelected),
      ),
    );
  }
}
