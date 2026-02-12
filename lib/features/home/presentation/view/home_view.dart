import 'package:evently_app/features/home/presentation/widget/app_bar_home_widget.dart';
import 'package:evently_app/features/home/presentation/widget/body_list.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          AppBarHomWidget(),
          Expanded(child: BodyList(isSelected: true,))
        ],
      ),
    );
  }
}
