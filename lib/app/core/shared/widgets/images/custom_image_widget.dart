import 'package:flutter/material.dart';

class CustomImageWidget extends StatelessWidget {
  final String path;
  final double aspectRatio;
  final Alignment alignment;

  const CustomImageWidget({
    Key? key,
    required this.path,
    required this.aspectRatio,
    this.alignment = Alignment.center,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: Align(
        alignment: alignment,
        child: Image.asset(
          path,
        ),
      ),
    );
  }
}
