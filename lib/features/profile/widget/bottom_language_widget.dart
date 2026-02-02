import 'package:evently_app/config/language/manager/lang_provider.dart';
import 'package:evently_app/core/extension/extensions.dart';
import 'package:evently_app/features/profile/widget/language_selected_widget.dart';
import 'package:evently_app/features/profile/widget/unselected_language_widget.dart';
import 'package:evently_app/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BottomLanguageWidget extends StatelessWidget {
  BottomLanguageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var languageProvider = Provider.of<LanguageProvider>(context);

    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: context.width * 0.08,
        vertical: context.height * 0.05,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          InkWell(
            onTap: () => languageProvider.changeLanguage("en"),
            child: languageProvider.currentLocal == "en"
                ? SelectedWidget(text: S.current.english)
                : UnSelectedWidget(text: S.current.english),
          ),
          SizedBox(height: context.height * 0.03),
          InkWell(
            onTap: () => languageProvider.changeLanguage("ar"),
            child: languageProvider.currentLocal == "ar"
                ? SelectedWidget(text: S.current.arabic)
                : UnSelectedWidget(text: S.current.arabic),
          ),
        ],
      ),
    );
  }
}
