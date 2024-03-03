import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PasswordOutlinedTextField extends StatelessWidget {
  const PasswordOutlinedTextField({
    super.key,
    required this.icon,
    required this.placeholder,
    required this.inputType,
    this.suffixIcon = const Icon(Icons.visibility_off)
  });
  final Widget icon;
  final String placeholder;
  final TextInputType inputType;
  final Widget suffixIcon;

  @override
  Widget build(BuildContext context) {
    return CupertinoTextField(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
          border: Border.all(
            color: Colors.lightBlue.shade900,
            width: 1.0,
          ),
          color: Colors.white,
          borderRadius: BorderRadius.circular(8.0)
      ),
      prefix: icon,
      placeholder: placeholder,
      placeholderStyle: TextStyle(
          color: Colors.grey.shade600,
          fontSize: 18
      ),
      maxLines: 1,
      keyboardType: inputType,
      suffix: suffixIcon,
    );
  }
}