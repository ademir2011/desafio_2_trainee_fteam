import 'package:flutter/material.dart';

class CustomCardRadioSelectWidget extends StatelessWidget {
  final Widget child;
  final bool? value;
  final void Function(bool?)? onChanged;

  const CustomCardRadioSelectWidget({
    Key? key,
    required this.child,
    required this.onChanged,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Row(
      children: [
        Transform.scale(
          scale: 0.75,
          child: SizedBox(
            height: 15,
            width: 15,
            child: Checkbox(
              side: BorderSide(
                color: theme.colorScheme.primary,
                width: 2,
              ),
              shape: const CircleBorder(),
              activeColor: theme.colorScheme.tertiary,
              value: value,
              onChanged: onChanged,
            ),
          ),
        ),
        const SizedBox(width: 10),
        Expanded(child: child),
      ],
    );
  }
}
