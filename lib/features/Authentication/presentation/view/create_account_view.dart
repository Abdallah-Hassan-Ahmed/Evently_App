import 'package:evently_app/config/routes/base_routes.dart';
import 'package:evently_app/config/widget/custom_botton_widget.dart';
import 'package:evently_app/config/widget/custom_text_field.dart';
import 'package:evently_app/core/extension/extensions.dart';
import 'package:evently_app/core/helper/validator.dart';

import 'package:evently_app/features/Authentication/presentation/view/login_view.dart';
import 'package:evently_app/features/Authentication/presentation/widget/logo_widget.dart';
import 'package:evently_app/features/Authentication/presentation/widget/row_widget_text.dart';
import 'package:evently_app/features/Screen/presentation/view/app_screen.dart';
import 'package:evently_app/generated/l10n.dart';
import 'package:flutter/material.dart';

class CreateAccountView extends StatefulWidget {
  CreateAccountView({super.key});
  static const String routeName = "create_account";

  @override
  State<CreateAccountView> createState() => _CreateAccountViewState();
}

class _CreateAccountViewState extends State<CreateAccountView> {
  TextEditingController nameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController passWordController = TextEditingController();

  TextEditingController rePassWordController = TextEditingController();

  bool obscure = false;

  bool obscure2 = false;

  bool _autoValidate = false;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: context.width * 0.03,
          // vertical: context.height * 0.025,
        ),
        child: SingleChildScrollView(
          child: Form(
            autovalidateMode: _autoValidate
                ? AutovalidateMode.onUserInteraction
                : AutovalidateMode.disabled,
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SafeArea(child: LogoWidget()),

                SizedBox(height: context.height * 0.019),

                CustomTextField(
                  controller: nameController,
                  hint: S.current.name,
                  prefixIcon: Icon(Icons.person),
                  validator: (value) {
                    return Validators.minLength(value, 3);
                  },
                ),

                SizedBox(height: context.height * 0.019),

                CustomTextField(
                  controller: emailController,
                  hint: S.current.email,
                  prefixIcon: Icon(Icons.email),
                  validator: (value) {
                    return Validators.isEmail(value);
                  },
                ),

                SizedBox(height: context.height * 0.019),

                CustomTextField(
                  controller: passWordController,
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

                SizedBox(height: context.height * 0.019),

                CustomTextField(
                  controller: rePassWordController,
                  hint: S.current.re_password,
                  validator: (value) {
                    return Validators.confirmPassword(
                      value,
                      passWordController.text,
                    );
                  },
                  obscureText: !obscure2,
                  prefixIcon: Icon(Icons.lock),
                  suffixIcons: IconButton(
                    onPressed: () {
                      setState(() {
                        obscure2 = !obscure2;
                      });
                    },
                    icon: obscure2
                        ? Icon(Icons.visibility)
                        : Icon(Icons.visibility_off),
                  ),
                ),

                SizedBox(height: context.height * 0.019),

                CustomButton(
                  text: S.current.create_account,
                  onPressed: () {
                    setState(() {
                      _autoValidate = true;
                    });
                    if (_formKey.currentState!.validate()) {
                      Navigator.push(
                        context,
                        BaseRoute(page: const AppScreen()),
                      );
                    }
                  },
                ),

                // SizedBox(height: context.height * 0.019),
                Align(
                  alignment: Alignment.center,
                  child: RowContentText(
                    onPressed: () {
                      Navigator.push(context, BaseRoute(page: LogInView()));
                    },
                    textButton: S.current.login,
                    text: S.current.already_have_account,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
