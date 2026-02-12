import 'package:evently_app/config/widget/custom_text_field.dart';
import 'package:evently_app/core/extension/extensions.dart';
import 'package:evently_app/features/home/presentation/widget/body_list.dart';
import 'package:evently_app/generated/l10n.dart';
import 'package:flutter/material.dart';

class LoveView extends StatelessWidget {
  LoveView({super.key});

  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.only(top: context.height * 0.025),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: context.width * 0.02,
              ),
              child: CustomTextField(
                controller: controller,
                hint: S.current.search_event,
                prefixIcon: const Icon(Icons.search),
              ),
            ),
            SizedBox(height: context.height * 0.02),
            Expanded(
              child: BodyList(isSelected: false),
            ),
          ],
        ),
      ),
    );
  }
}
