import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class CustomRichTextWidget extends StatelessWidget {
  final String text;
  final bool isUnderlined;
  final void Function()? onTap;

  const CustomRichTextWidget({
    Key? key,
    required this.text,
    required this.onTap,
    this.isUnderlined = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return RichText(
      text: TextSpan(
        text: text,
        style: theme.textTheme.bodySmall!.copyWith(
          color: theme.colorScheme.secondary,
          decoration: isUnderlined ? TextDecoration.underline : null,
          decorationThickness: 3,
          fontWeight: FontWeight.bold,
        ),
        recognizer: TapGestureRecognizer()..onTap = onTap,
      ),
    );
  }
}
