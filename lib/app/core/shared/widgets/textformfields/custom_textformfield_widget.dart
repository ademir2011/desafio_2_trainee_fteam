import 'package:flutter/material.dart';

class CustomTextFormFieldWidget extends StatelessWidget {
  final String hintText;
  final void Function(String)? onChanged;
  final String? Function(String?)? validator;

  const CustomTextFormFieldWidget({
    Key? key,
    required this.hintText,
    this.validator,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return TextFormField(
      scrollPadding: EdgeInsets.only(
        bottom: MediaQuery.of(context).size.height * 0.25,
      ),
      decoration: InputDecoration(
        isCollapsed: true,
        hintText: hintText,
        hintStyle: TextStyle(
          color: theme.colorScheme.onTertiary,
          fontSize: 12.5,
        ),
      ),
      onChanged: onChanged,
      validator: validator,
    );
  }
}
