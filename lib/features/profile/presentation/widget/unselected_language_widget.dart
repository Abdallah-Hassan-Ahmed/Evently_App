import 'package:flutter/material.dart';

class UnSelectedWidget extends StatelessWidget {
  const UnSelectedWidget({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(text, style: Theme.of(context).textTheme.headlineLarge);
  }
}
