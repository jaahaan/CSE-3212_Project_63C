import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  final controller, keyboardType, validator, hintText, labelText, prefixIcon;
  const InputField({
    super.key,
    required this.controller,
    required this.keyboardType,
    required this.validator,
    required this.hintText,
    required this.labelText,
    required this.prefixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      obscureText: keyboardType == TextInputType.visiblePassword ? true : false,
      validator: validator,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(50)),
        ),
        hintText: hintText,
        labelText: labelText,
        prefixIcon: prefixIcon,
      ),
    );
  }
}
