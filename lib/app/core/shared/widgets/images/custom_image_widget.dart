import 'package:flutter/material.dart';

class CustomImageWidget extends StatelessWidget {
  final String path;

  const CustomImageWidget({
    Key? key,
    required this.path,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      path,
      fit: BoxFit.cover,
    );
  }
}
