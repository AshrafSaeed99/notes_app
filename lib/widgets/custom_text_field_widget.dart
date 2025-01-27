import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomTextFieldWidget extends StatelessWidget {
  const CustomTextFieldWidget({super.key, required this.hintText, this.maxLines=1, this.onSaved});
  final String hintText;
  final int maxLines;
  
  final void Function(String?)? onSaved;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      validator:(value) => value!.isEmpty ? 'This field cannot be empty' : null,
      cursorColor: kPrimaryColor,
      maxLines: maxLines,
      decoration: InputDecoration(
        hintText: hintText,
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(kPrimaryColor),
        contentPadding: const EdgeInsets.symmetric(horizontal: 8),
      ),
    );
  }
}

OutlineInputBorder buildBorder([Color color = Colors.white]) {
  return OutlineInputBorder(
    borderSide: BorderSide(color: color),
    borderRadius: BorderRadius.circular(8),
  );
}
