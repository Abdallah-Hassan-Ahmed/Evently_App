import 'package:evently_app/config/language/manager/lang_provider.dart';
import 'package:evently_app/config/routes/base_routes.dart';
import 'package:evently_app/config/widget/custom_botton_widget.dart';
import 'package:evently_app/config/widget/custom_text_field.dart';
import 'package:evently_app/core/extension/extensions.dart';
import 'package:evently_app/core/helper/validator.dart';
import 'package:evently_app/core/utils/app_color.dart';
import 'package:evently_app/core/utils/app_font_styles.dart';
import 'package:evently_app/core/utils/app_image.dart';
import 'package:evently_app/features/Authentication/presentation/view/create_account_view.dart';
import 'package:evently_app/features/Authentication/presentation/view/forget_password_view.dart';
import 'package:evently_app/features/Authentication/presentation/widget/logo_widget.dart';
import 'package:evently_app/features/Authentication/presentation/widget/row_widget_text.dart';
import 'package:evently_app/features/Authentication/presentation/widget/text_button_widget.dart';
import 'package:evently_app/features/onBoarding/presentation/view/onBoarding_view.dart';
import 'package:evently_app/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LogInView extends StatefulWidget {
  LogInView({super.key});
  static const String routeName = "log_in_view";

  @override
  State<LogInView> createState() => _LogInViewState();
}

class _LogInViewState extends State<LogInView> {
  TextEditingController emailController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController passwordController = TextEditingController();
  bool obscure = false;
  bool _autoValidate = false;
  @override
  Widget build(BuildContext context) {
    var languageProvider = Provider.of<LanguageProvider>(context);
    return Scaffold(
      body: Form(
        autovalidateMode: _autoValidate
            ? AutovalidateMode.onUserInteraction
            : AutovalidateMode.disabled,

        key: _formKey,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: context.width * 0.04),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SafeArea(child: LogoWidget()),

              SizedBox(height: context.height * 0.02),

              CustomTextField(
                controller: emailController,
                hint: S.current.email,
                validator: (value) {
                  return Validators.isEmail(value);
                },
                prefixIcon: Icon(Icons.email),
              ),

              SizedBox(height: context.height * 0.02),

              CustomTextField(
                controller: passwordController,
                hint: S.current.password,
                validator: (value) {
                  return Validators.isPassword(value);
                },
                obscureText: !obscure,
                prefixIcon: Icon(Icons.lock),
                suffixIcons: IconButton(
                  onPressed: () {
                    setState(() {
                      obscure = !obscure;
                    });
                  },
                  icon: obscure
                      ? Icon(Icons.visibility)
                      : Icon(Icons.visibility_off),
                ),
              ),

              Align(
                alignment: languageProvider.currentLocal == "en"
                    ? Alignment.centerRight
                    : Alignment.centerLeft,
                child: TextButtonWidget(
                  onPressed: () {
                    Navigator.push(
                      context,
                      BaseRoute(page: ForgetPasswordView()),
                    );
                  },
                  text: S.current.forget_password,
                ),
              ),

              CustomButton(
                text: S.current.login,
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

              SizedBox(height: context.height * 0.02),

              Align(
                alignment: Alignment.center,
                child: RowContentText(
                  text: S.current.dont_have_account,
                  onPressed: () {
                    Navigator.push(
                      context,
                      BaseRoute(page: CreateAccountView()),
                    );
                  },
                  textButton: S.current.create_account,
                ),
              ),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: context.width * 0.05),
                child: Row(
                  children: [
                    Expanded(child: Divider(color: AppColor.fontColor)),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: context.width * 0.03,
                      ),
                      child: Text(
                        S.current.or,
                        style: AppFontStyles.semi16Primary,
                      ),
                    ),
                    Expanded(child: Divider(color: AppColor.fontColor)),
                  ],
                ),
              ),

              SizedBox(height: context.height * 0.02),

              CustomButton(
                text: S.current.login_with_google,
                textStyle: AppFontStyles.semi20Primary,
                borderColor: AppColor.fontColor,
                icon: Image.asset(
                  AppImages.google,
                  height: context.width * 0.06,
                  width: context.width * 0.06,
                ),
                onPressed: () {},
                bgColor: AppColor.transparent,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
