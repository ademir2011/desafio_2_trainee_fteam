import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../../core/widgets/cards/action_button_widget.dart';
import '../../../../core/widgets/cards/custom_card_radio_select_widget.dart';
import '../../../../core/widgets/images/custom_image_widget.dart';
import '../../../../core/widgets/textformfields/custom_textformfield_widget.dart';
import '../../../../core/widgets/texts/custom_richtext_widget.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final formKey = GlobalKey<FormState>();

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
              aspectRatio: 1,
              path: 'lib\\assets\\images\\Fundo.png',
              alignment: Alignment.topCenter,
            ),
            Positioned(
              bottom: 0,
              child: Container(
                height: size.height * 0.65,
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
                      const CustomTextFormFieldWidget(hintText: 'Name'),
                      SizedBox(height: 5 + size.height * 0.01),
                      const CustomTextFormFieldWidget(hintText: 'E-mail'),
                      SizedBox(height: 5 + size.height * 0.01),
                      const CustomTextFormFieldWidget(hintText: 'Password'),
                      SizedBox(height: 5 + size.height * 0.01),
                      const CustomTextFormFieldWidget(hintText: 'Confirm Password'),
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
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ActionButtonWidget(prefixText: 'Sign Up', onTap: () {}),
                            const SizedBox(height: 10),
                            CustomRichTextWidget(
                              text: 'Sign In',
                              isUnderlined: true,
                              onTap: () => Modular.to.navigate('/'),
                            ),
                          ],
                        ),
                      ),
                    ],
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
