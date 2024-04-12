import 'dart:ffi';

import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.label,
    required this.onChanged,
    this.textInputType,
    this.isAPassword = false,
  });

  final String label;
  final Function(String newText) onChanged;
  final TextInputType? textInputType;
  final bool isAPassword;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Text(
            label,
            style: TextStyle(
                fontWeight: FontWeight.bold
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 16),
          margin: EdgeInsets.only(top: 16),
          color: Colors.grey.shade400,
          child: TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: label,
            ),
            onChanged: onChanged,
            keyboardType: textInputType,
            obscureText: isAPassword,
          ),
        )
      ],
    );
  }
}
