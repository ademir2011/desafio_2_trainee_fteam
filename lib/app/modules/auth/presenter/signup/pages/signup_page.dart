import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../../../core/routes/app_routes.dart';
import '../../../../../core/shared/specifications/name_specification.dart';
import '../../../../../core/shared/value_objects/confirm_password.dart';
import '../../../../../core/shared/value_objects/email.dart';
import '../../../../../core/shared/value_objects/name.dart';
import '../../../../../core/shared/value_objects/password.dart';
import '../../../../../core/shared/widgets/cards/action_button_widget.dart';
import '../../../../../core/shared/widgets/cards/custom_card_radio_select_widget.dart';
import '../../../../../core/shared/widgets/images/custom_image_widget.dart';
import '../../../../../core/shared/widgets/textformfields/custom_textformfield_widget.dart';
import '../../../../../core/shared/widgets/texts/custom_richtext_widget.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final formKey = GlobalKey<FormState>();
  final name = Name();
  final email = Email();
  final password = Password();
  final confirmPassword = ConfirmPassword();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final radioOption = ValueNotifier<bool?>(false);
    final theme = Theme.of(context);

    return Scaffold(
      body: SizedBox(
        width: size.width,
        height: size.height,
        child: Stack(
          children: [
            const CustomImageWidget(
              path: 'lib\\assets\\images\\Fundo.png',
            ),
            SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.only(top: size.height * 0.35),
                child: Container(
                  height: size.height * 0.8,
                  width: size.width,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 35,
                    vertical: 40,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25),
                    ),
                    color: theme.colorScheme.background,
                  ),
                  child: Form(
                    key: formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Get Started',
                          style: theme.textTheme.displayMedium,
                        ),
                        const SizedBox(height: 10),
                        CustomTextFormFieldWidget(
                          hintText: 'Name',
                          onChanged: (value) => name.value = value,
                          validator: (_) => name.hasError(),
                        ),
                        SizedBox(height: 5 + size.height * 0.01),
                        CustomTextFormFieldWidget(
                          hintText: 'E-mail',
                          onChanged: (value) => email.value = value,
                          validator: (_) => email.hasError(),
                        ),
                        SizedBox(height: 5 + size.height * 0.01),
                        CustomTextFormFieldWidget(
                          hintText: 'Password',
                          onChanged: (value) => password.value = value,
                          validator: (_) => password.hasError(),
                        ),
                        SizedBox(height: 5 + size.height * 0.01),
                        CustomTextFormFieldWidget(
                          hintText: 'Confirm Password',
                          onChanged: (value) {
                            confirmPassword.password = password.value;
                            confirmPassword.value = value;
                          },
                          validator: (_) => confirmPassword.hasError(),
                        ),
                        const SizedBox(height: 10),
                        ValueListenableBuilder<bool?>(
                          valueListenable: radioOption,
                          builder: (ctx, radioValue, widget) => CustomCardRadioSelectWidget(
                            value: radioValue,
                            onChanged: (value) => radioOption.value = value,
                            child: Row(
                              children: [
                                Text(
                                  'I agree to the ',
                                  style: theme.textTheme.bodySmall!.copyWith(fontWeight: FontWeight.bold),
                                ),
                                CustomRichTextWidget(text: 'Thems of Service', onTap: () {}),
                                Text(
                                  ' and ',
                                  style: theme.textTheme.bodySmall!.copyWith(fontWeight: FontWeight.bold),
                                ),
                                CustomRichTextWidget(text: 'Privacy Policy', onTap: () {}),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(height: 15),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ActionButtonWidget(
                              prefixText: 'Sign Up',
                              onTap: () {
                                if (formKey.currentState!.validate()) {
                                  Modular.to.navigate(AppRoute.signin);
                                }
                              },
                            ),
                            const SizedBox(height: 10),
                            CustomRichTextWidget(
                              text: 'Sign In',
                              isUnderlined: true,
                              onTap: () => Modular.to.navigate(AppRoute.signin),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
