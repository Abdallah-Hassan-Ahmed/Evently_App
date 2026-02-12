import 'package:evently_app/core/extension/extensions.dart';
import 'package:evently_app/core/utils/app_color.dart';
import 'package:flutter/material.dart';

class EventTailList extends StatelessWidget {
  const EventTailList({
    super.key,
    this.icon,
    this.title,
    this.trailingText,
    required this.onTap,
    this.borderColor,
    this.widget,
    this.widgetTrailing, this.titleWidget,
  });
  final IconData? icon;
  final String? title;
  final Widget? widget;
  final Widget? widgetTrailing;
  final Widget? titleWidget;
  final Color? borderColor;
  final String? trailingText;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: context.height * 0.01),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color:
              borderColor ?? Theme.of(context).colorScheme.onPrimaryContainer,
        ),
      ),
      // color: ,
      child: ListTile(
        leading:
            widget ??
            Icon(icon, color: Theme.of(context).colorScheme.onPrimaryContainer),
        title:titleWidget?? Text(
          title??"",
          style: Theme.of(
            context,
          ).textTheme.headlineMedium!.copyWith(color: borderColor),
        ),
        trailing:
            widgetTrailing ??
            Text(
              trailingText ?? "",
              style: Theme.of(
                context,
              ).textTheme.headlineMedium!.copyWith(color: AppColor.fontColor),
            ),
        onTap: onTap,
      ),
    );
  }
}
