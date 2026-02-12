import 'package:evently_app/core/extension/extensions.dart';
import 'package:evently_app/core/utils/app_color.dart';
import 'package:evently_app/core/utils/app_image.dart';
import 'package:evently_app/features/add_event/data/model/event_model.dart';
import 'package:evently_app/features/add_event/presentation/widget/image_event_conrainer.dart';
import 'package:evently_app/features/home/presentation/widget/content_list_widget.dart';
import 'package:evently_app/generated/l10n.dart';
import 'package:flutter/material.dart';

class topCard extends StatefulWidget {
  topCard({super.key});

  @override
  State<topCard> createState() => _topCardState();
}

class _topCardState extends State<topCard> {
  ScrollController controller = ScrollController();

  int selectIndex = 0;

  List<EventModel> eventModel = [
    EventModel(S.current.sport, AppImages.sport, AppImages.sportDark),
    EventModel(S.current.meeting, AppImages.meeting, AppImages.meetingDark),
    EventModel(S.current.gaming, AppImages.console, AppImages.gamingDark),
    EventModel(
      S.current.workshop,
      AppImages.roundTable,
      AppImages.workshopDark,
    ),
    EventModel(S.current.book_club, AppImages.book, AppImages.bookClub),
    EventModel(
      S.current.exhibition,
      AppImages.exhibition,
      AppImages.exhibitionDark,
    ),
    EventModel(S.current.holiday, AppImages.sun, AppImages.holidayDark),
    EventModel(S.current.eating, AppImages.dish, AppImages.eating),
    EventModel(S.current.birthday, AppImages.food, AppImages.birthDay),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.height * 0.35,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(height: context.height * 0.005),

          EventImageContainer(imageUrl: eventModel[selectIndex].eventImage),

          SizedBox(height: context.height * 0.02),

          SizedBox(
            height: context.height * 0.05,
            child: ListView.separated(
              controller: controller,
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) =>
                  SizedBox(width: context.width * 0.02),
              itemCount: eventModel.length,
              itemBuilder: (context, index) {
                return ContentList(
                  unSelectColorImage: Theme.of(
                    context,
                  ).colorScheme.onPrimaryContainer,
                  color: AppColor.fontColor,
                  colorImage: AppColor.backgroundDarkMode,
                  colorText: Theme.of(context).textTheme.bodyMedium,
                  image: eventModel[index].eventIcon,
                  text: eventModel[index].eventName,
                  isSelected: selectIndex == index ? true : false,
                  onTap: () {
                    setState(() {
                      selectIndex = index;
                    });
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
