import 'package:flutter/material.dart';

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
        isCollapsed: true,
        hintText: hintText,
        hintStyle: TextStyle(
          color: theme.colorScheme.onTertiary,
          fontSize: 12.5,
        ),
      ),
    );
  }
}
