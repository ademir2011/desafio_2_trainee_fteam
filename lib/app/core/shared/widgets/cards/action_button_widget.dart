import 'package:flutter/material.dart';

class ActionButtonWidget extends StatelessWidget {
  final String prefixText;
  final void Function()? onTap;

  const ActionButtonWidget({
    Key? key,
    required this.prefixText,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          prefixText,
          style: theme.textTheme.bodyMedium!.copyWith(
            color: theme.colorScheme.tertiary,
            fontWeight: FontWeight.bold,
          ),
        ),
        GestureDetector(
          onTap: onTap,
          child: Container(
            height: 45,
            width: 45,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: theme.colorScheme.tertiary,
            ),
            child: Align(
              child: Icon(
                Icons.arrow_forward_rounded,
                color: theme.iconTheme.color,
                size: 17,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
