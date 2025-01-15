import 'package:flutter/material.dart';
import 'package:frontend_system/core/configs/theme/app_colors.dart';

class AuthField extends StatelessWidget {
  final String hintText;
  final IconData prefixIcon;
  final bool? isObscureText;
  final TextEditingController controller;

  const AuthField({
    super.key,
    required this.hintText,
    required this.prefixIcon,
    this.isObscureText = false,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
        prefixIcon: Icon(
          prefixIcon,
        ),
      ),
      obscureText: isObscureText!,
      validator: (value) {
        if (value!.isEmpty) {
          return '$hintText is missing !';
        }
        return null;
      },
    );
  }
}
