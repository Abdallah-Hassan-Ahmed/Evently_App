import 'package:evently_app/config/routes/base_routes.dart';
import 'package:evently_app/config/widget/custom_botton_widget.dart';
import 'package:evently_app/config/widget/custom_text_field.dart';
import 'package:evently_app/core/extension/extensions.dart';
import 'package:evently_app/core/helper/validator.dart';
import 'package:evently_app/core/utils/app_color.dart';
import 'package:evently_app/core/utils/app_font_styles.dart';
import 'package:evently_app/core/utils/app_image.dart';
import 'package:evently_app/features/onBoarding/presentation/view/onBoarding_view.dart';
import 'package:evently_app/generated/l10n.dart';
import 'package:flutter/material.dart';

class ForgetPasswordView extends StatefulWidget {
  ForgetPasswordView({super.key});

  static const String routeName = "forget_password";

  @override
  State<ForgetPasswordView> createState() => _ForgetPasswordViewState();
}

class _ForgetPasswordViewState extends State<ForgetPasswordView> {
  TextEditingController emailController = TextEditingController();
  bool _autoValidate = false;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

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
          S.current.forget_password,
          style: AppFontStyles.semi20Primary,
        ),
      ),

      body: Form(
        key: _formKey,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: context.width * 0.03),
          child: Column(
            spacing: context.height * 0.03,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: context.height * 0.42,
                width: double.infinity,
                child: Image.asset(AppImages.changeSetting),
              ),
              CustomTextField(
                controller: emailController,
                hint: S.current.email,
                prefixIcon: Icon(Icons.email),
                validator: (value) {
                  return Validators.isEmail(value);
                },
              ),
              CustomButton(
                text: S.current.create_account,
                onPressed: () {
                  setState(() {
                    _autoValidate = true;
                  });
                  if (_formKey.currentState!.validate()) {
                    Navigator.push(
                      context,
                      BaseRoute(page: const OnBoardingView()),
                    );
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
