import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final theme = Theme.of(context);

    return Scaffold(
      body: SizedBox(
        width: size.width,
        height: size.height,
        child: Stack(
          children: [
            Image.asset(
              'lib\\assets\\images\\Fundo.png',
              height: size.height * 0.45,
              width: size.width,
              fit: BoxFit.cover,
            ),
            Positioned(
              bottom: 0,
              child: Container(
                height: size.height * 0.65,
                width: size.width,
                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                  vertical: 50,
                ),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                  ),
                  color: Colors.white,
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
                      const SizedBox(height: 50),
                      const CustomTextFormFieldWidget(hintText: 'E-mail'),
                      const CustomTextFormFieldWidget(hintText: 'Password'),
                      CustomRadioSelectWidget(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text('Remember me'),
                            const Text('Forgot password?'),
                          ],
                        ),
                      ),
                      const SizedBox(height: 50),
                      const ActionButtonWidget(prefixText: 'Sign In'),
                      CustomRichText(text: 'Sign Up', onTap: () {}),
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

class CustomRichText extends StatelessWidget {
  final String text;
  final void Function() onTap;

  const CustomRichText({
    Key? key,
    required this.text,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return RichText(
      text: TextSpan(
        text: 'Sign Up',
        style: TextStyle(
          color: theme.colorScheme.secondary,
          decoration: TextDecoration.underline,
          fontSize: 10,
          fontWeight: FontWeight.bold,
        ),
        recognizer: TapGestureRecognizer()..onTap = onTap,
      ),
    );
  }
}

class ActionButtonWidget extends StatelessWidget {
  final String prefixText;

  const ActionButtonWidget({
    Key? key,
    required this.prefixText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(prefixText, style: theme.textTheme.bodyMedium),
        ElevatedButton(
          child: const Padding(
            padding: EdgeInsets.symmetric(vertical: 20),
            child: Icon(Icons.arrow_forward_rounded),
          ),
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
          ),
          onPressed: () {},
        ),
      ],
    );
  }
}

class CustomRadioSelectWidget extends StatelessWidget {
  final Widget child;
  const CustomRadioSelectWidget({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Radio(value: true, groupValue: true, onChanged: (_) {}),
        const SizedBox(width: 5),
        child,
      ],
    );
  }
}

class CustomTextFormFieldWidget extends StatelessWidget {
  final String hintText;

  const CustomTextFormFieldWidget({
    Key? key,
    required this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return TextFormField(
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(
          color: theme.colorScheme.onTertiary,
        ),
      ),
    );
  }
}
