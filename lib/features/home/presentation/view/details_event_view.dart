import 'package:evently_app/core/extension/extensions.dart';
import 'package:evently_app/core/utils/app_color.dart';
import 'package:evently_app/core/utils/app_font_styles.dart';
import 'package:evently_app/core/utils/app_image.dart';
import 'package:evently_app/features/add_event/presentation/widget/image_event_conrainer.dart';
import 'package:evently_app/features/add_event/presentation/widget/tail_list_time_event.dart';
import 'package:evently_app/features/home/presentation/widget/location_event_widget.dart';
import 'package:evently_app/generated/l10n.dart';
import 'package:flutter/material.dart';

class EventDetailsView extends StatelessWidget {
  const EventDetailsView({super.key});
  static const String routeName = 'event_details';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.transparent,
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(Icons.arrow_back, color: AppColor.fontColor),
        ),
        title: Text(
          S.current.event_details,
          style: AppFontStyles.semi20Primary,
        ),
        actions: [
          GestureDetector(
            onTap: () {},
            child: Icon(Icons.edit_outlined, color: AppColor.fontColor),
          ),
          SizedBox(width: context.width * 0.02),
          Icon(Icons.delete_outline, color: AppColor.red),
          GestureDetector(
            onTap: () {},
            child: SizedBox(width: context.width * 0.03),
          ),
        ],
      ),

      body: Padding(
        padding: EdgeInsets.only(
          left: context.width * 0.035,
          right: context.width * 0.035,
          bottom: context.width * 0.03,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              EventImageContainer(imageUrl: AppImages.gamingDark),
              SizedBox(height: context.height * 0.02),
              Text(
                "We Are Going To Play Football",
                style: AppFontStyles.semi20Primary,
              ),
              SizedBox(height: context.height * 0.02),
              EventTailList(
                onTap: () {},
                borderColor: AppColor.fontColor,
                widget: Container(
                  padding: EdgeInsets.all(context.height * 0.015),
                  decoration: BoxDecoration(
                    color: AppColor.fontColor,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Icon(
                    Icons.calendar_month_outlined,
                    color: AppColor.backgroundLightMode,
                    size: 20,
                  ),
                ),
                titleWidget: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "21 November 2024",
                      style: AppFontStyles.semi14DarkMode.copyWith(
                        color: AppColor.fontColor,
                      ),
                    ),
                    Text(
                      "12:12 PM",
                      style: AppFontStyles.semi14LightMode.copyWith(
                        color: Theme.of(context).colorScheme.onPrimaryContainer,
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: context.height * 0.015),
              EventTailList(
                borderColor: AppColor.fontColor,
                widget: Container(
                  padding: EdgeInsets.all(context.height * 0.012),
                  decoration: BoxDecoration(
                    color: AppColor.fontColor,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Icon(
                    Icons.my_location_outlined,
                    color: AppColor.backgroundLightMode,
                  ),
                ),
                title: S.current.choose_event_location,
                widgetTrailing: Icon(
                  Icons.arrow_right_outlined,
                  color: AppColor.fontColor,
                ),
                onTap: () {},
              ),
              SizedBox(height: context.height * 0.015),
              EventLocation(),

              SizedBox(height: context.height * 0.015),

              Text(
                S.current.description,
                style: Theme.of(context).textTheme.headlineMedium,
              ),

              SizedBox(height: context.height * 0.015),

              Container(
                padding: EdgeInsets.all(context.height * 0.015),
                decoration: BoxDecoration(
                  border: Border.all(color: AppColor.fontColor, width: 1.5),
                  borderRadius: BorderRadius.circular(12),
                ),

                child: Text(
                  "ekkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkksdssssssssssssssssssssssssssssssssssssssssssskkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk",
                  style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),

              SizedBox(height: context.height * 0.015),
            ],
          ),
        ),
      ),
    );
  }
}
