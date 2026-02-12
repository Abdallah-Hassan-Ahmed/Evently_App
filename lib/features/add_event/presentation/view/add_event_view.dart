import 'package:evently_app/config/widget/custom_botton_widget.dart';
import 'package:evently_app/config/widget/custom_text_field.dart';
import 'package:evently_app/core/extension/extensions.dart';
import 'package:evently_app/core/utils/app_color.dart';
import 'package:evently_app/features/add_event/presentation/widget/tail_list_time_event.dart';
import 'package:evently_app/features/add_event/presentation/widget/top_card_widget.dart';
import 'package:evently_app/generated/l10n.dart';
import 'package:flutter/material.dart';

class AddEventView extends StatelessWidget {
  AddEventView({super.key});
  TextEditingController titleController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: context.width * 0.03),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              topCard(),
              Text(
                S.current.title,
                style: Theme.of(context).textTheme.bodySmall,
              ),
              SizedBox(height: context.height * 0.015),
              CustomTextField(
                controller: titleController,
                hint: S.current.event_title,
                prefixIcon: Icon(Icons.edit_square, size: 20),
              ),
              SizedBox(height: context.height * 0.03),
              Text(
                S.current.description,
                style: Theme.of(context).textTheme.bodySmall,
              ),
              SizedBox(height: context.height * 0.015),
              CustomTextField(
                controller: titleController,
                hint: S.current.event_description,
                // prefixIcon: Icon(Icons.edit_square, size: 20),
                maxLine: 4,
              ),
              SizedBox(height: context.height * 0.03),
              EventTailList(
                icon: Icons.calendar_month_outlined,
                title: S.current.event_date,
                trailingText: S.current.choose_date,
                onTap: () {
                  showDatePicker(
                    context: context,
                    firstDate: DateTime.now(),
                    lastDate: DateTime(2027),
                  );
                },
              ),
              EventTailList(
                icon: Icons.access_time,
                title: S.current.event_time,
                trailingText: S.current.choose_time,
                onTap: () {
                  showTimePicker(
                    context: context,
                    initialTime: TimeOfDay.now(),
                    builder: (context, child) {
                      return Theme(
                        data: Theme.of(context).copyWith(
                          timePickerTheme: TimePickerThemeData(
                            backgroundColor: Theme.of(
                              context,
                            ).colorScheme.onPrimary,
                            dayPeriodShape: RoundedRectangleBorder(
                              borderRadius: BorderRadiusGeometry.circular(12),
                              side: BorderSide(
                                color: AppColor.backgroundLightMode,
                                width: 2,
                              ),
                            ),
                            hourMinuteShape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            hourMinuteColor: Colors.grey.shade400,
                            hourMinuteTextColor: Colors.black,
                            dayPeriodColor: AppColor.fontColor,
                            dayPeriodTextColor: Theme.of(
                              context,
                            ).colorScheme.onPrimaryContainer,
                            dialHandColor: AppColor.fontColor,
                            dialBackgroundColor: Colors.grey.shade300,
                            entryModeIconColor: AppColor.fontColor,
                          ),
                          colorScheme: ColorScheme.light(
                            primary: AppColor.fontColor,
                            onPrimary: Colors.white,
                            onSurface: Colors.black,
                          ),
                        ),
                        child: child!,
                      );
                    },
                  );
                },
              ),
              Text(
                S.current.location,
                style: Theme.of(context).textTheme.bodySmall,
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
              SizedBox(height: context.height * 0.02),

              CustomButton(text: S.current.add_event, onPressed: () {}),

              SizedBox(height: context.height * 0.04),
            ],
          ),
        ),
      ),
    );
  }
}
