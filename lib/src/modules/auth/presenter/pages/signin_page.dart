import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../../core/widgets/cards/action_button_widget.dart';
import '../../../../core/widgets/cards/custom_card_radio_select_widget.dart';
import '../../../../core/widgets/images/custom_image_widget.dart';
import '../../../../core/widgets/textformfields/custom_textformfield_widget.dart';
import '../../../../core/widgets/texts/custom_richtext_widget.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final radioOption = ValueNotifier<bool?>(false);
    final size = MediaQuery.of(context).size;
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
                        'Welcome back',
                        style: theme.textTheme.displayMedium,
                      ),
                      const SizedBox(height: 35),
                      const CustomTextFormFieldWidget(hintText: 'E-mail'),
                      SizedBox(height: 5 + size.height * 0.015),
                      const CustomTextFormFieldWidget(hintText: 'Password'),
                      const SizedBox(height: 12.5),
                      ValueListenableBuilder<bool?>(
                        valueListenable: radioOption,
                        builder: (ctx, radioValue, widget) => CustomCardRadioSelectWidget(
                          value: radioValue,
                          onChanged: (value) => radioOption.value = value,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Remember me',
                                style: theme.textTheme.bodySmall!.copyWith(
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: -0.5,
                                ),
                              ),
                              CustomRichTextWidget(
                                text: 'Forgot password?',
                                isUnderlined: true,
                                onTap: () {},
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 30),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ActionButtonWidget(prefixText: 'Sign In', onTap: () {}),
                            const SizedBox(height: 10),
                            CustomRichTextWidget(
                              text: 'Sign Up',
                              isUnderlined: true,
                              onTap: () => Modular.to.navigate('/signup'),
                            ),
                          ],
                        ),
                      )
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
