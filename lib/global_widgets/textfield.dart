import 'package:flutter/material.dart';

class TextFieldScreen extends StatelessWidget {
  final Color? textColour;
  final Icon? suffixIcon;
  final Color? iconColour;
  final FontWeight? fontModal;
  final String hintText;
  final TextInputType? keyBoardType;
  final Icon? prefixIcon;
  final int? maxLines;

  TextFieldScreen(
      {super.key,
      this.prefixIcon,
      this.textColour,
      this.suffixIcon,
      this.iconColour,
      this.fontModal,
      this.keyBoardType,
      required this.hintText,
      this.maxLines});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: TextFormField(
          keyboardType: keyBoardType,
          maxLines: maxLines,
          decoration: InputDecoration(
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              hintText: hintText,
              prefixIcon: prefixIcon,
              suffixIcon: suffixIcon,
              iconColor: iconColour)),
    );
  }
}
