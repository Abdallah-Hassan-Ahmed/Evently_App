import 'package:evently_app/core/extension/extensions.dart';
import 'package:evently_app/core/utils/app_image.dart';
import 'package:evently_app/features/home/presentation/widget/content_list_widget.dart';
import 'package:evently_app/generated/l10n.dart';
import 'package:flutter/material.dart';

class ScrollList extends StatefulWidget {
  ScrollList({super.key});

  @override
  State<ScrollList> createState() => _ScrollListState();
}

class _ScrollListState extends State<ScrollList> {
  ScrollController controller = ScrollController();

  int selectIndex = 0;

  final List<String> eventsNames = [
    S.current.all,
    S.current.sport,
    S.current.birthday,
    S.current.meeting,
    S.current.gaming,
    S.current.workshop,
    S.current.book_club,
    S.current.exhibition,
    S.current.holiday,
    S.current.eating,
  ];
  final List<String> eventIcons = [
    AppImages.all,
    AppImages.sport,
    AppImages.food,
    AppImages.meeting,
    AppImages.console,
    AppImages.roundTable,
    AppImages.book,
    AppImages.exhibition,
    AppImages.sunbed,
    AppImages.dish,
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      controller: controller,
      scrollDirection: Axis.horizontal,
      separatorBuilder: (context, index) =>
          SizedBox(width: context.width * 0.02),
      itemCount: eventsNames.length,
      itemBuilder: (context, index) {
        return ContentList(
          image: eventIcons[index],
          text: eventsNames[index],
          isSelected: selectIndex == index ? true : false,
          onTap: () {
            setState(() {
              selectIndex = index;
            });
          },
        );
      },
    );
  }
}
